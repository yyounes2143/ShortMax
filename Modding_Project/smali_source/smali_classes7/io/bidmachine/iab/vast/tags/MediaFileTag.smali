.class public Lio/bidmachine/iab/vast/tags/MediaFileTag;
.super Lio/bidmachine/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# static fields
.field private static final c:[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v10, "maintainAspectRatio"

    .line 2
    .line 3
    const-string v11, "apiFramework"

    .line 4
    .line 5
    const-string v0, "delivery"

    .line 6
    .line 7
    const-string v1, "type"

    .line 8
    .line 9
    const-string v2, "width"

    .line 10
    .line 11
    const-string v3, "height"

    .line 12
    .line 13
    const-string v4, "codec"

    .line 14
    .line 15
    const-string v5, "id"

    .line 16
    .line 17
    const-string v6, "bitrate"

    .line 18
    .line 19
    const-string v7, "minBitrate"

    .line 20
    .line 21
    const-string v8, "maxBitrate"

    .line 22
    .line 23
    const-string v9, "scalable"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lio/bidmachine/iab/vast/tags/MediaFileTag;->c:[Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public O()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/tags/MediaFileTag;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public U()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public Z()I
    .locals 1

    .line 1
    const-string v0, "height"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->E(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public a0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public k0()I
    .locals 1

    .line 1
    const-string v0, "width"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->E(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public l0()Z
    .locals 3

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "width"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "height"

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->P()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0
.end method
