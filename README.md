# Clickable Tv

Clicable Object for Android Tv App.


Usage:

ClickableTv(
                    child: ListTile(
                      title: Text(list[index].itemName),
                    ),
                    onClick: () {
                      setState(() {
                        _value = list[index].itemValue;
                      });
                    },
                  );

