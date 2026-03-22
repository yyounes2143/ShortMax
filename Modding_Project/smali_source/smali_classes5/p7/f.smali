.class public final synthetic Lp7/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lw7/g;


# instance fields
.field public final synthetic a:Lw7/a0;

.field public final synthetic b:Lw7/a0;

.field public final synthetic c:Lw7/a0;

.field public final synthetic d:Lw7/a0;


# direct methods
.method public synthetic constructor <init>(Lw7/a0;Lw7/a0;Lw7/a0;Lw7/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp7/f;->a:Lw7/a0;

    .line 5
    .line 6
    iput-object p2, p0, Lp7/f;->b:Lw7/a0;

    .line 7
    .line 8
    iput-object p3, p0, Lp7/f;->c:Lw7/a0;

    .line 9
    .line 10
    iput-object p4, p0, Lp7/f;->d:Lw7/a0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lw7/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lp7/f;->a:Lw7/a0;

    .line 2
    .line 3
    iget-object v1, p0, Lp7/f;->b:Lw7/a0;

    .line 4
    .line 5
    iget-object v2, p0, Lp7/f;->c:Lw7/a0;

    .line 6
    .line 7
    iget-object v3, p0, Lp7/f;->d:Lw7/a0;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar;->a(Lw7/a0;Lw7/a0;Lw7/a0;Lw7/a0;Lw7/d;)Lp7/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
