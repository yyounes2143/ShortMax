.class public final Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;
.super Ljava/lang/Object;
.source "BindSuccessEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final BIND_EMAIL:I = 0x2

.field public static final BIND_FACEBOOK:I = 0x1

.field public static final BIND_GOOGLE:I = 0x4

.field public static final BIND_HUAWEI:I = 0x5

.field public static final BIND_PHONE:I = 0x3

.field public static final Companion:Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bindType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;->Companion:Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent$Companion;

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
    iput p1, p0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;->bindType:I

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;IILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;->bindType:I

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;->copy(I)Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;->bindType:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(I)Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;->bindType:I

    .line 14
    .line 15
    iget p1, p1, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;->bindType:I

    .line 16
    .line 17
    if-eq v1, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final getBindType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;->bindType:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;->bindType:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BindSuccessEvent(bindType="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;->bindType:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
