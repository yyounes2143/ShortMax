.class public final synthetic Ls1/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls1/g;


# direct methods
.method public synthetic constructor <init>(Ls1/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls1/f;->a:Ls1/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/f;->a:Ls1/g;

    .line 2
    .line 3
    invoke-static {v0}, Ls1/g;->a(Ls1/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
