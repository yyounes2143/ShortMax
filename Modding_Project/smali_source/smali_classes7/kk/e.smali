.class public final synthetic Lkk/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk2/i;


# instance fields
.field public final synthetic a:Lf2/a;


# direct methods
.method public synthetic constructor <init>(Lf2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkk/e;->a:Lf2/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkk/e;->a:Lf2/a;

    .line 2
    .line 3
    check-cast p1, Lf2/a;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lkk/f;->b(Lf2/a;Lf2/a;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
