.class public final synthetic Ln6/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt5/p;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/v0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln6/f;->b:Lcom/google/android/exoplayer2/v0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createExtractors()[Lt5/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ln6/f;->b:Lcom/google/android/exoplayer2/v0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/i;->d(Lcom/google/android/exoplayer2/v0;)[Lt5/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
