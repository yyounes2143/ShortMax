.class final Lcom/startshorts/androidplayer/manager/player/feature/d$b;
.super Ljava/lang/Object;
.source "DecryptFeature.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/player/feature/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/player/feature/d$b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/manager/player/feature/d$b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lof/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/d$b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/player/feature/d$b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->c:Lcom/startshorts/androidplayer/manager/player/feature/d$b$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lof/c;I)V
    .locals 1
    .param p1    # Lof/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "decryptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->a:Lof/c;

    iput p2, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lof/c;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, -0x98967f

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/d$b;-><init>(Lof/c;I)V

    return-void
.end method


# virtual methods
.method public final a()Lof/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->a:Lof/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->b:I

    .line 2
    .line 3
    return-void
.end method
