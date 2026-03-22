.class public final synthetic Lj9/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements La5/g;


# instance fields
.field public final synthetic a:Lj9/f;


# direct methods
.method public synthetic constructor <init>(Lj9/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj9/e;->a:Lj9/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lj9/e;->a:Lj9/f;

    .line 2
    .line 3
    check-cast p1, Lj9/b0;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lj9/f;->b(Lj9/f;Lj9/b0;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
