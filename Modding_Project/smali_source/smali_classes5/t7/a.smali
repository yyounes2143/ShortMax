.class public final synthetic Lt7/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lw7/g;


# instance fields
.field public final synthetic a:Lw7/a0;

.field public final synthetic b:Lw7/a0;


# direct methods
.method public synthetic constructor <init>(Lw7/a0;Lw7/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt7/a;->a:Lw7/a0;

    .line 5
    .line 6
    iput-object p2, p0, Lt7/a;->b:Lw7/a0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lw7/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lt7/a;->a:Lw7/a0;

    .line 2
    .line 3
    iget-object v1, p0, Lt7/a;->b:Lw7/a0;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/firebase/appcheck/playintegrity/FirebaseAppCheckPlayIntegrityRegistrar;->a(Lw7/a0;Lw7/a0;Lw7/d;)Lu7/i;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
