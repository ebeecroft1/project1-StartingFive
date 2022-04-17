# Starting 5

This is the second project I completed during my Software Engineering Immersive at General Assembly.

The project deliverable was to create a CRUD web application combining what we had learned so far of front-end and back-end web development. The application was required to have at least 3 models with various associations and a user login.

For my project, I chose to make an application called Starting 5, where users can build a team of five from a pool of NBA players. My goal was to create the foundation for a fantasy basketball app that I could extend further in the future.

As a further challenge, the app was to be deployed using Heroku and I elected to use Bootstrap to kick start my front-end.

[Starting 5](https://starting-5.herokuapp.com/)

### Tools Employed
- Ruby on Rails
- Postgresql
- Bootstrap
- bcrypt

## How to use

From the homepage, any link will direct you to sign up. If you are an existing member, you have the option to login using the link in the top right.

After login, you will be taken to your teams index. Here you have the option to view a team or create a new team.

To create a new team, you can select from the list of available players.

You can also edit or delete your teams.

The players index contains a list of all available players with individual bios. An admin user has the ability to create new players or update existing players.

## Design

I took inspiration from sites such as The Ringer for the overall look of the website. I wanted to use the primary colours of blue and red in echoes of the NBA logo.

## Challenges

By far the biggest challenge I faced was the Create Team function. This was because I had set my Teams data table up quite simply.

``Team Table: Team Name | User ID``

Using a joining table called PlayersTeams, I added Player IDs with Team IDs. However this established only one field where players could be added to a team which meant I had to store the player IDs as an array.

```ruby
def team_params
    params.require(:team).permit(:name, :player_ids => [])
end
```

In practice, this made players interchangable and I could not select them by position which is key in fantasy sports.

It also gave me difficulty in designing my Create Team form. I was able to solve using the following solution:

```erb
<div class="form">
    <%= f.label :player_id, :class => 'form-label' %>s
                <br>
    <%= f.collection_select(:player_ids, Player.all, :id, :name, {:class => 'form-select'}, {:multiple => true}) %>
</div>
```
The end result is not very user friendly in that you have to select multiple players using the same drop down menu. Not a pleasant user experience.

## Future Updates
- Redesign the Teams Table to include 5 seperate inputs for Player IDs which would allow a user to select a player for each position on the court
- Implement a model for NBA Teams, I lay the foundation in the Players table but did not complete
- Assign tiers to the players with a dollar value per tier (e.g. Tier 1 = $15)
- Implement a simple salary cap on the team creation (e.g. Create the best starting 5 you can with only $40)

I would also like to add a simple salary cap function

## Bugs I still have
- Create Team form - player selection is clunky
- Bootstrap nav bar drop down menu when the window is made smaller doesn't work