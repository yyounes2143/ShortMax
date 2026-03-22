.class public final Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;
.super Ljava/lang/Object;
.source "LoginSuccessEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOGIN_FACEBOOK:I = 0x1

.field public static final LOGIN_GOOGLE:I = 0x2

.field public static final LOGIN_HUAWEI:I = 0x3


# instance fields
.field private final loginType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;->Companion:Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;->loginType:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getLoginType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;->loginType:I

    .line 2
    .line 3
    return v0
.end method
