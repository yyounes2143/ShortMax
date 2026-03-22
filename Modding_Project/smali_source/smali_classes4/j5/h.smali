.class public final synthetic Lj5/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll5/a$a;


# instance fields
.field public final synthetic a:Lj5/o;

.field public final synthetic b:Lc5/p;


# direct methods
.method public synthetic constructor <init>(Lj5/o;Lc5/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj5/h;->a:Lj5/o;

    .line 5
    .line 6
    iput-object p2, p0, Lj5/h;->b:Lc5/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lj5/h;->a:Lj5/o;

    .line 2
    .line 3
    iget-object v1, p0, Lj5/h;->b:Lc5/p;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lj5/o;->d(Lj5/o;Lc5/p;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
