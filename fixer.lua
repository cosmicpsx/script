for i,v in pairs(game:GetService("ReplicatedStorage").__DIRECTORY.Pets.Autumn:GetChildren()) do
v.Parent = v.Parent.Parent
end
