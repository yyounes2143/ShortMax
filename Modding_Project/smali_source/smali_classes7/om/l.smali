.class public Lom/l;
.super Lom/n;
.source "NativePlacementBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lom/n<",
        "Lxq/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

.field private static final d:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

.field private static final e:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

.field private static final f:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

.field private static final g:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

.field private static final h:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lom/l;->c:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 6
    .line 7
    const/16 v1, 0x7b

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setId(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setReq(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/16 v3, 0x68

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat$Builder;->setLen(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setTitle(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lom/l;->d:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 38
    .line 39
    const/16 v2, 0x7f

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setId(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setReq(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sget-object v3, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DESC:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;->setType(Lcom/explorestack/protobuf/adcom/NativeDataAssetType;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setData(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lom/l;->e:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 69
    .line 70
    const/16 v2, 0x8

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setId(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setReq(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    sget-object v2, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_CTA_TEXT:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;->setType(Lcom/explorestack/protobuf/adcom/NativeDataAssetType;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setData(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lom/l;->f:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 100
    .line 101
    const/4 v1, 0x7

    .line 102
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setId(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setReq(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    sget-object v3, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_RATING:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;->setType(Lcom/explorestack/protobuf/adcom/NativeDataAssetType;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setData(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Lom/l;->g:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 131
    .line 132
    const/16 v2, 0x65

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setId(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setReq(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    sput-object v0, Lom/l;->h:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 145
    .line 146
    const/16 v2, 0x66

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setId(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setReq(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lom/n;-><init>(Lio/bidmachine/AdContentType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static j(Lxq/n;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;
    .locals 2
    .param p0    # Lxq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x7c

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setId(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lxq/n;->getAdRequestParameters()Lio/bidmachine/nativead/a;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object v1, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setReq(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v1, Lcom/explorestack/protobuf/adcom/NativeImageAssetType;->NATIVE_IMAGE_ASSET_TYPE_ICON_IMAGE:Lcom/explorestack/protobuf/adcom/NativeImageAssetType;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;->setType(Lcom/explorestack/protobuf/adcom/NativeImageAssetType;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object v1, Lio/bidmachine/Constants;->IMAGE_MIME_TYPES:[Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;->addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setImg(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method static k(Lxq/n;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;
    .locals 2
    .param p0    # Lxq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x80

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setId(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lxq/n;->getAdRequestParameters()Lio/bidmachine/nativead/a;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object v1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setReq(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v1, Lcom/explorestack/protobuf/adcom/NativeImageAssetType;->NATIVE_IMAGE_ASSET_TYPE_MAIN_IMAGE:Lcom/explorestack/protobuf/adcom/NativeImageAssetType;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;->setType(Lcom/explorestack/protobuf/adcom/NativeImageAssetType;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object v1, Lio/bidmachine/Constants;->IMAGE_MIME_TYPES:[Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;->addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setImg(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method static m(Lxq/n;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;
    .locals 2
    .param p0    # Lxq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setId(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lxq/n;->getAdRequestParameters()Lio/bidmachine/nativead/a;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v1, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setReq(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setSkip(Z)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    sget-object v1, Lio/bidmachine/Constants;->VIDEO_MIME_TYPES:[Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/16 v1, 0x38

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMinbitr(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const/16 v1, 0x1000

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMaxbitr(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const/4 v1, 0x5

    .line 78
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMindur(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const/16 v1, 0x1e

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMaxdur(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setLinearValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->setVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method


# virtual methods
.method public b(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;
    .locals 2
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lom/n;->c(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance v0, Lom/k;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lom/k;-><init>(Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object v0
.end method

.method public bridge synthetic e(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lxq/n;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lom/l;->l(Lio/bidmachine/ContextProvider;Lxq/n;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)Lcom/explorestack/protobuf/Message$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public l(Lio/bidmachine/ContextProvider;Lxq/n;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 8
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lxq/n;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;",
            "Lio/bidmachine/AdPlacementConfig;",
            "I)",
            "Lcom/explorestack/protobuf/Message$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setInstl(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/explorestack/protobuf/adcom/SizeUnit;->SIZE_UNIT_DIPS:Lcom/explorestack/protobuf/adcom/SizeUnit;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setUnit(Lcom/explorestack/protobuf/adcom/SizeUnit;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lio/bidmachine/Constants;->IMAGE_MIME_TYPES:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lio/bidmachine/Constants;->VIDEO_MIME_TYPES:[Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Lom/l;->c:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;->addAsset(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    .line 43
    .line 44
    .line 45
    sget-object v2, Lom/l;->d:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;->addAsset(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    .line 48
    .line 49
    .line 50
    sget-object v2, Lom/l;->e:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;->addAsset(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    .line 53
    .line 54
    .line 55
    sget-object v2, Lom/l;->f:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;->addAsset(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Lom/l;->j(Lxq/n;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;->addAsset(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    .line 65
    .line 66
    .line 67
    invoke-static {p2}, Lom/l;->k(Lxq/n;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;->addAsset(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Lom/l;->m(Lxq/n;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;->addAsset(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    .line 79
    .line 80
    .line 81
    sget-object v2, Lom/l;->g:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;->addAsset(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    .line 84
    .line 85
    .line 86
    sget-object v2, Lom/l;->h:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;->addAsset(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setNativefmt(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 92
    .line 93
    .line 94
    move-object v1, p0

    .line 95
    move-object v2, p1

    .line 96
    move-object v3, p2

    .line 97
    move-object v4, p3

    .line 98
    move-object v5, p4

    .line 99
    move-object v6, p5

    .line 100
    move v7, p7

    .line 101
    invoke-virtual/range {v1 .. v7}, Lom/n;->d(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-nez p6, :cond_0

    .line 106
    .line 107
    if-eqz p1, :cond_0

    .line 108
    .line 109
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    if-eqz p6, :cond_1

    .line 122
    .line 123
    invoke-virtual {p0, p6, p1}, Lom/n;->f(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/sdk/Placement;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 132
    .line 133
    .line 134
    :cond_1
    :goto_0
    return-object v0
.end method
