.class public final Lpm/b;
.super Ljava/lang/Object;
.source "PositionDataMapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpm/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/explorestack/protobuf/adcom/NativeAssetPosition;)Lio/bidmachine/PositionData;
    .locals 2
    .param p1    # Lcom/explorestack/protobuf/adcom/NativeAssetPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    sget-object v1, Lpm/b$a;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget p1, v1, p1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq p1, v1, :cond_3

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq p1, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    if-eq p1, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lio/bidmachine/PositionData;->BottomRight:Lio/bidmachine/PositionData;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lio/bidmachine/PositionData;->BottomLeft:Lio/bidmachine/PositionData;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Lio/bidmachine/PositionData;->TopRight:Lio/bidmachine/PositionData;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    sget-object v0, Lio/bidmachine/PositionData;->TopLeft:Lio/bidmachine/PositionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    :catchall_0
    :goto_0
    return-object v0
.end method
