.class final Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RemoteSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/settings/RemoteSettings;->c(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.google.firebase.sessions.settings.RemoteSettings"
    f = "RemoteSettings.kt"
    l = {
        0xa5,
        0x4e,
        0x5f
    }
    m = "updateSettings"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field synthetic j:Ljava/lang/Object;

.field final synthetic k:Lcom/google/firebase/sessions/settings/RemoteSettings;

.field l:I


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/settings/RemoteSettings;",
            "Lrs/c<",
            "-",
            "Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->k:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->l:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->l:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->k:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->c(Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
