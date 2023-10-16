echo "Hi Kat! I love you! Let's make a new project!"
echo "Love, Aerith"

echo "Please enter the directory where you want to put the project:"
read project_directory
echo "Please enter the name of your project:"
read project_name
echo "You entered: $project_name"


echo "    /\_/\ "
echo "  ( o   o )"
echo "   =\_v_/="


# Create a directory for the project
mkdir $project_directory/$project_name
cd $project_directory/$project_name

# Create a vscode workspace for the project that has the same name as the project
touch $project_name.code-workspace

# Add a JSON entry to the workspace file that specifies the Pandoc Citer .bib file location
echo "{
    \"folders\": [
        {
            \"path\": \".\"
        }
    ],
    \"settings\": {
        \"PandocCiter.DefaultBib\": \"$project_directory/$project_name/$project_name.bib\"
    }
}" > $project_name.code-workspace

echo "Save your .bib file in the project directory from Zotero and name it $project_name.bib"

# Create a .md file for the project
touch $project_name.md

# Create an assets directory for the project
mkdir assets

code ../$project_name

echo "Done! Happy writing! <3 Meow!"