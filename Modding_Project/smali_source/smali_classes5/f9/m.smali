.class public final synthetic Lf9/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lw7/g;


# instance fields
.field public final synthetic a:Lw7/a0;


# direct methods
.method public synthetic constructor <init>(Lw7/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf9/m;->a:Lw7/a0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lw7/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf9/m;->a:Lw7/a0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->a(Lw7/a0;Lw7/d;)Lcom/google/firebase/remoteconfig/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
