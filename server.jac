walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker reverse_string {
    has text: str;

    can return_message with `root entry {
        report {
            "response": "The reverse of '" + self.text + "' is '" + self.text[::-1] + "'."
        };
    }
}

walker time_greeting {
    has name: str;
    has hour: int;

    can return_message with `root entry {
        if self.hour < 12 {
            report {
                "response": "Good morning, " + self.name + "!"
            };
        } elif self.hour < 18 {
            report {
                "response": "Good afternoon, " + self.name + "!"
            };
        } else {
            report {
                "response": "Good evening, " + self.name + "!"
            };
        }
    }
}