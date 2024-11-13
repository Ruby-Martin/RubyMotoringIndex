SetColours <- function() {
.RACFBlue <<- "#0C2340"
.RACFSilver <<- "#8C8F92"
.RACFWhite <<- "#FFFFFF"
.RACFBlack <<- "#231F20"
.DieselGrey <<- "#8C8F92"
.DieselGray <<- "#8C8F92"
.BEVblue <<- "#0084AD"
.RACFColour1 <<- "#0084AD"
.RACFColour1.1 <<- "#1E94B9"
.RACFColour1.2 <<- "#69A7C6"
.RACFColour1.3 <<- "#99C1D8"
.RACFColour1.4 <<- "#CBDBE8"
.RACFColour2 <<- "#005687"
.RACFColour2.1 <<- "#416A97"
.RACFColour2.2 <<- "#6D85AB"
.RACFColour2.3 <<- "#96A3BF"
.RACFColour2.4 <<- "#C6CBDB"
.PetrolGreen <<- "#4C9E45"
.RACFColour3 <<- "#4C9E45"
.RACFColour3.1 <<- "#73AB60"
.RACFColour3.2 <<- "#95BC84"
.RACFColour3.3 <<- "#B4CDA6"
.RACFColour3.4 <<- "#D8E4D0"
.GFIgreen <<- "#235E3A"
.RACFColour4 <<- "#235E3A"
.GFIgreen1 <<- "#4D7355"
.RACFColour4.1 <<- "#4D7355"
.GFIgreen2 <<- "#728C74"
.RACFColour4.2 <<- "#728C74"
.GFIgreen3 <<-"#97A997"
.RACFColour4.3 <<- "#97A997"
.GFIGreen4 <<- "#C4CCC3"
.RACFColour4.4 <<- "#C4CCC3"
.RACFColour5 <<- "#742E89"
.RACFColour5.1 <<- "#86549A"
.RACFColour5.2 <<- "#9D76AC"
.RACFColour5.3 <<- "#B99EC6"
.RACFColour5.4 <<- "#D8C9E0"
.RACFColour6 <<- "#3D1A53"
.RACFColour6.1 <<- "#593D69"
.RACFColour6.2 <<- "#776083"
.RACFColour6.3 <<- "#9787A2"
.RACFColour6.4 <<- "#C2B9C9"
.RACFColour7 <<- "#D98828"
.RACFColour7.1 <<- "#E09B4C"
.RACFColour7.2 <<- "#E5B174"
.RACFColour7.3 <<- "#F0CA9E"
.RACFColour7.4 <<- "#F5E2CA"
.RACFColour8 <<- "#C36E28"
.RACFColour8.1 <<- "#CC8548"
.RACFColour8.2 <<- "#D79E6E"
.RACFColour8.3 <<- "#E2BA96"
.RACFColour8.4 <<- "#EED8C5"
.PHEVmag <<- "#AB1D54"
.RACFColour9 <<- "#AB1D54"
.RACFColour9.1 <<- "#B7506A"
.HybridPink <<- "#C47685"
.RACFColour9.2 <<- "#C47685"
.RACFColour9.3 <<- "#D69EA6"
.RACFColour9.4 <<- "#E7CACC"
.RACFColour10 <<- "#7A303F"
.RACFColour10.1 <<- "#8E5057"
.RACFColour10.2 <<- "#A57274"
.RACFColour10.3 <<- "#BC9798"
.RACFColour10.4 <<- "#D9C5C4"
.RACFColour11 <<- "#4D4F55"
.RACFColour11.1 <<- "#68676C"
.RACFColour11.2 <<- "#838287"
.RACFColour11.3<<- "#A6A3A6"
.RACFColour11.4 <<- "#CAC8CB"
.RACFColour12 <<- "#758591"
.RACFColour12.1 <<- "#8D97A2"
.RACFColour12.2 <<- "#A4ABB5"
.RACFColour12.3 <<- "#BEC3C8"
.RACFColour12.4 <<- "#DADCDF"
FuelShapes <<- c("Diesel" = 24, 
                 "Petrol" = 25, 
                 "Battery electric" = 19, 
                 "PHEV" = 18, 
                 "All fuels" = 15)
FuelLines <<- c("Adjusted diesel" = 4 , 
                "Adjusted petrol" = 4 , 
                "Diesel" = 1, 
                "Petrol" = 1, 
                "Electric" = 2, 
                "Hybrid electric (clean)" = 3, 
                "All fuels" = 4, 
                "Ethanol" = 3, 
                "Biodiesel" = 3, 
                "Tax-free diesel" = 4 , 
                "Tax-free petrol" = 3 )
FuelColours <<- c("Diesel" = .DieselGrey, 
                  "Adjusted diesel" = .DieselGrey, 
                  "Petrol" = .PetrolGreen, 
                  "Adjusted petrol" = .PetrolGreen, 
                  "Battery electric" = .BEVblue, 
                  "All fuels" = .RACFBlue,
                  "PHEV" = .PHEVmag,
                  "Hybrid electric (clean)" = .RACFColour2.3, 
                  "Ethanol" = .RACFColour4, 
                  "Biodiesel" = .RACFColour11.1, 
                  "Tax-free diesel" = .DieselGrey , 
                  "Tax-free petrol" = .PetrolGreen)
VehicleColours <<- c("Cars" = .RACFBlue, 
                     "TFL tube" = .RACFColour2 , 
                     "Cycling" = .RACFColour3.2 , 
                     "TFL bus"= .RACFColour8, 
                     "Heavy goods vehicles" = .RACFColour6.1, 
                     "All motor vehicles" = .RACFColour5, 
                     "Light commercial vehicles" = .RACFColour5.3, 
                     "National rail" = .RACFColour8.3, 
                     "National rail noCR" = .RACFColour10.1, 
                     "Bus excluding london" = .RACFColour1.2, 
                     "Cars and taxis" = .RACFBlue,
                     "Motorcycles" = .RACFColour7,
                     "Total other vehicles" = .RACFColour4,
                     "Buses and coaches" = .RACFColour4.1)
CasualtyColours <<- c("Fatality (killed)" = .RACFColour9, "Casualty (serious injury)" = .RACFColour7, "Fatality or casualty (killed or seriously injured)" = .RACFColour5.2)
CasualtyLines <<- c("Fatality (killed)" = 2, "Casualty (serious injury)" = 4, "Fatality or casualty (killed or seriously injured)" = 1)
PassFailColours <<- c("Passed" = .RACFColour3.1, "Failed"= .RACFColour10)
RoadClassColours <<- c("Motorways" = .RACFColour9, "Rural A roads"= .GFIgreen,  "Urban A roads"= .RACFColour7, "Rural minor roads"= .RACFColour6, "Urban minor roads"=.RACFColour5.4 ,  "All roads"=.RACFColour5.3 )
}
SetColours()