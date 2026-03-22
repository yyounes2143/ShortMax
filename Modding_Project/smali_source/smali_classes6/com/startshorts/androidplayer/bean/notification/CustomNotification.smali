.class public final Lcom/startshorts/androidplayer/bean/notification/CustomNotification;
.super Ljava/lang/Object;
.source "CustomNotification.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private cover:Landroid/graphics/Bitmap;
    .annotation runtime Llk/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final notificationFullScreenIntentRequestCode:I

.field private final notificationId:I

.field private final notificationRequestCode:I

.field private final push:Lcom/startshorts/androidplayer/bean/push/CustomPush;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILcom/startshorts/androidplayer/bean/push/CustomPush;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p4    # Lcom/startshorts/androidplayer/bean/push/CustomPush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "push"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->notificationId:I

    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->notificationRequestCode:I

    .line 4
    iput p3, p0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->notificationFullScreenIntentRequestCode:I

    .line 5
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->push:Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->cover:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/startshorts/androidplayer/bean/push/CustomPush;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;-><init>(IIILcom/startshorts/androidplayer/bean/push/CustomPush;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final getCover()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->cover:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotificationFullScreenIntentRequestCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->notificationFullScreenIntentRequestCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNotificationId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->notificationId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNotificationRequestCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->notificationRequestCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->push:Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCover(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->cover:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method
