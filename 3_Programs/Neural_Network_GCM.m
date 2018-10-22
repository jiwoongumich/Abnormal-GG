[gid_map, adj, numElement, unique_gid] = h5CU('Al-Cu_400.h5',10);
[~,coords] = gid_rodV('Al-Cu_400.h5', unique_gid, gid_map);

hold all
for i = 1:size(coords,1)
    line = [coords(adj(i,2),:); coords(adj(i,1),:)];
    plot3(line(:,1),line(:,2),line(:,3))
end