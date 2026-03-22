.class public Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;
.super Ljava/lang/Object;
.source "FormatProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/utils/FormatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatProviderHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/ss/ttvideoengine/utils/FormatProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/utils/FormatProvider;->DEFAULT:Lcom/ss/ttvideoengine/utils/FormatProvider;

    .line 2
    .line 3
    sput-object v0, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->sInstance:Lcom/ss/ttvideoengine/utils/FormatProvider;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static get()Lcom/ss/ttvideoengine/utils/FormatProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->sInstance:Lcom/ss/ttvideoengine/utils/FormatProvider;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/ss/ttvideoengine/utils/FormatProvider;->DEFAULT:Lcom/ss/ttvideoengine/utils/FormatProvider;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public static isM3u8(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->get()Lcom/ss/ttvideoengine/utils/FormatProvider;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1, p0}, Lcom/ss/ttvideoengine/utils/FormatProvider;->provideFormat(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p0, v1, :cond_1

    .line 15
    .line 16
    move v0, v1

    .line 17
    :cond_1
    return v0
.end method

.method public static isMpd(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->get()Lcom/ss/ttvideoengine/utils/FormatProvider;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1, p0}, Lcom/ss/ttvideoengine/utils/FormatProvider;->provideFormat(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne p0, v1, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_1
    return v0
.end method

.method public static set(Lcom/ss/ttvideoengine/utils/FormatProvider;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->sInstance:Lcom/ss/ttvideoengine/utils/FormatProvider;

    .line 2
    .line 3
    return-void
.end method
