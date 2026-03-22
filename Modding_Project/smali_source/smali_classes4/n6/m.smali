.class public final synthetic Ln6/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/p$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/p;

.field public final synthetic c:Ln6/h;

.field public final synthetic d:Ln6/i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln6/m;->a:Lcom/google/android/exoplayer2/source/p$a;

    .line 5
    .line 6
    iput-object p2, p0, Ln6/m;->b:Lcom/google/android/exoplayer2/source/p;

    .line 7
    .line 8
    iput-object p3, p0, Ln6/m;->c:Ln6/h;

    .line 9
    .line 10
    iput-object p4, p0, Ln6/m;->d:Ln6/i;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln6/m;->a:Lcom/google/android/exoplayer2/source/p$a;

    .line 2
    .line 3
    iget-object v1, p0, Ln6/m;->b:Lcom/google/android/exoplayer2/source/p;

    .line 4
    .line 5
    iget-object v2, p0, Ln6/m;->c:Ln6/h;

    .line 6
    .line 7
    iget-object v3, p0, Ln6/m;->d:Ln6/i;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/p$a;->c(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
