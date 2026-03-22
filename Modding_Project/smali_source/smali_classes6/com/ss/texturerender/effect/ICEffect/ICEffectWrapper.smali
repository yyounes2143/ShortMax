.class public Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;
.super Lcom/ss/texturerender/effect/AbsEffect;
.source "ICEffectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectResourceFinder;,
        Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectInitCallback;,
        Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectLogListener;,
        Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectMsgListener;
    }
.end annotation


# static fields
.field public static final BEF_AB_DATA_TYPE_BOOL:I = 0x0

.field public static final BEF_AB_DATA_TYPE_FLOAT:I = 0x2

.field public static final BEF_AB_DATA_TYPE_INT:I = 0x1

.field public static final BEF_AB_DATA_TYPE_STRING:I = 0x3

.field public static final DEFAULT_SEI_KEY:Ljava/lang/String; = "LiveSEI"

.field private static final LOG_TAG:Ljava/lang/String; = "TR_ICEffectWrapper"

.field private static isLibLoaded:Z


# instance fields
.field private mDefaultFilter:Lcom/ss/texturerender/effect/GLDefaultFilter;

.field private mHandle:J

.field private mIsInit:Z

.field public mMsgListener:Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectMsgListener;

.field private mProcessOccurError:Z

.field private mResourceFinder:Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectResourceFinder;

.field private mSeiInfo:Ljava/lang/String;

.field private mSeiKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->loadLibrary()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/AbsEffect;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mSeiInfo:Ljava/lang/String;

    .line 9
    .line 10
    const-string p1, "LiveSEI"

    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mSeiKey:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mProcessOccurError:Z

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mDefaultFilter:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 21
    .line 22
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "new ICEffectWrapper, load so result: "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    sget-boolean v2, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "TR_ICEffectWrapper"

    .line 44
    .line 45
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/16 v0, 0x63

    .line 49
    .line 50
    iput v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 51
    .line 52
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mIsSupportOes:I

    .line 53
    .line 54
    const/16 p1, 0xde1

    .line 55
    .line 56
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 57
    .line 58
    return-void
.end method

.method private native _composerAppendNodesWithTags(J[Ljava/lang/Object;I[Ljava/lang/Object;)I
.end method

.method private native _composerGetNodePaths(J)Ljava/lang/String;
.end method

.method private native _composerRemoveNodes(J[Ljava/lang/String;I)I
.end method

.method private native _composerSetNodesWithTags(J[Ljava/lang/Object;I[Ljava/lang/Object;)I
.end method

.method private static native _configABBooleanValue(JLjava/lang/String;Z)I
.end method

.method private static native _configABFloatValue(JLjava/lang/String;F)I
.end method

.method private static native _configABIntValue(JLjava/lang/String;I)I
.end method

.method private static native _configABStringValue(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native _configEffect(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native _createEffectWrapper()J
.end method

.method private native _getEventData(JI)Ljava/lang/String;
.end method

.method private native _initEffect(JIILjava/lang/String;)I
.end method

.method private native _processFrame(JIIIIDLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native _release(J)I
.end method

.method private native _sendEffectMsg(JIIILjava/lang/String;)I
.end method

.method private native _setRenderCacheString(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native _setTextureSize(JII)I
.end method

.method public static loadLibrary()Z
    .locals 1

    .line 1
    :try_start_0
    const-string/jumbo v0, "texturerender_native"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return v0
.end method


# virtual methods
.method public composerAppendNodesWithTags(Landroid/os/Bundle;)I
    .locals 8

    .line 1
    sget-boolean v0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    cmp-long v0, v2, v4

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "node_path"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string/jumbo v0, "sticker_tags"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    array-length v6, v5

    .line 37
    iget-wide v3, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 38
    .line 39
    move-object v2, p0

    .line 40
    invoke-direct/range {v2 .. v7}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_composerAppendNodesWithTags(J[Ljava/lang/Object;I[Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "_composerAppendNodesWithTags ret: "

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "TR_ICEffectWrapper"

    .line 64
    .line 65
    invoke-static {p1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return v1
.end method

.method public composerRemoveNodes(Landroid/os/Bundle;)I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    cmp-long v0, v2, v4

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "node_path"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    array-length v0, p1

    .line 30
    iget-wide v1, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 31
    .line 32
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_composerRemoveNodes(J[Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "_composerRemoveNodes ret: "

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "TR_ICEffectWrapper"

    .line 56
    .line 57
    invoke-static {p1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return v1
.end method

.method public composerSetNodesWithTags(Landroid/os/Bundle;)I
    .locals 8

    .line 1
    sget-boolean v0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    cmp-long v0, v2, v4

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "node_path"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string/jumbo v0, "sticker_tags"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    array-length v6, v5

    .line 37
    iget-wide v3, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 38
    .line 39
    move-object v2, p0

    .line 40
    invoke-direct/range {v2 .. v7}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_composerSetNodesWithTags(J[Ljava/lang/Object;I[Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "_composerSetNodesWithTags ret: "

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "TR_ICEffectWrapper"

    .line 64
    .line 65
    invoke-static {p1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return v1
.end method

.method public getOption(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-boolean v0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    cmp-long v0, v2, v4

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "action"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x3

    .line 28
    if-eq v0, v2, :cond_2

    .line 29
    .line 30
    const/16 v2, 0x9

    .line 31
    .line 32
    if-eq v0, v2, :cond_1

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_1
    const-string v0, "event_type"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-wide v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 42
    .line 43
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_getEventData(JI)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_2
    iget-wide v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 49
    .line 50
    invoke-direct {p0, v0, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_composerGetNodePaths(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_3
    :goto_0
    return-object v1
.end method

.method public getResourceFunc(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mResourceFinder:Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectResourceFinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectResourceFinder;->createNativeResourceFinder(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1

    .line 10
    :cond_0
    const-wide/16 p1, 0x0

    .line 11
    .line 12
    return-wide p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    const-string v0, "data_type"

    .line 6
    .line 7
    const-string v12, "key"

    .line 8
    .line 9
    const-string/jumbo v13, "value"

    .line 10
    .line 11
    .line 12
    const/4 v14, -0x1

    .line 13
    if-eqz v11, :cond_0

    .line 14
    .line 15
    sget-boolean v1, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-boolean v1, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    :cond_0
    move v1, v14

    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_createEffectWrapper()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iput-wide v1, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 31
    .line 32
    iget v1, v10, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "create effect wrapper, handle: "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-wide v3, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 45
    .line 46
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v15, "TR_ICEffectWrapper"

    .line 54
    .line 55
    invoke-static {v1, v15, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-wide v1, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 59
    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .line 62
    cmp-long v1, v1, v3

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    return v14

    .line 67
    :cond_2
    const-string v1, "log_level"

    .line 68
    .line 69
    invoke-virtual {v11, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const-string v1, "log_key"

    .line 74
    .line 75
    invoke-virtual {v11, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    const-string v1, "platform_config"

    .line 80
    .line 81
    invoke-virtual {v11, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const-string/jumbo v1, "use_gl3"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    const-string v1, "cache_path"

    .line 93
    .line 94
    invoke-virtual {v11, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    const-string v1, "license"

    .line 99
    .line 100
    invoke-virtual {v11, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    const-string v1, "msg_callback"

    .line 105
    .line 106
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectMsgListener;

    .line 111
    .line 112
    iput-object v1, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mMsgListener:Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectMsgListener;

    .line 113
    .line 114
    const-string v1, "init_callback"

    .line 115
    .line 116
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    move-object v2, v1

    .line 121
    check-cast v2, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectInitCallback;

    .line 122
    .line 123
    const-string v1, "resource_finder"

    .line 124
    .line 125
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectResourceFinder;

    .line 130
    .line 131
    iput-object v1, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mResourceFinder:Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectResourceFinder;

    .line 132
    .line 133
    move-object/from16 v16, v15

    .line 134
    .line 135
    iget-wide v14, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 136
    .line 137
    move-object/from16 v1, p0

    .line 138
    .line 139
    move-object/from16 v17, v13

    .line 140
    .line 141
    move-object v13, v2

    .line 142
    move-wide v2, v14

    .line 143
    invoke-direct/range {v1 .. v9}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_configEffect(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    iget v2, v10, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 148
    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v4, "config effect, ret: "

    .line 155
    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    move-object/from16 v7, v16

    .line 167
    .line 168
    invoke-static {v2, v7, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const/16 v8, 0x11

    .line 172
    .line 173
    if-gez v1, :cond_4

    .line 174
    .line 175
    if-eqz v13, :cond_3

    .line 176
    .line 177
    invoke-interface {v13, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectInitCallback;->onInitCallback(I)V

    .line 178
    .line 179
    .line 180
    :cond_3
    iget-object v0, v10, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 181
    .line 182
    iget v2, v10, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 183
    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v4, "iceffect config effect error code: "

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v0, v8, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return v1

    .line 205
    :cond_4
    const-string v2, "ab_config"

    .line 206
    .line 207
    invoke-virtual {v11, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    const/4 v9, 0x1

    .line 216
    if-nez v3, :cond_b

    .line 217
    .line 218
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    .line 219
    .line 220
    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/4 v2, 0x0

    .line 224
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-ge v2, v4, :cond_b

    .line 229
    .line 230
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    iget v5, v10, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 235
    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v14, "set effect ab config: "

    .line 242
    .line 243
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-static {v5, v7, v6}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eqz v5, :cond_9

    .line 261
    .line 262
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_9

    .line 267
    .line 268
    move-object/from16 v5, v17

    .line 269
    .line 270
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    if-eqz v6, :cond_a

    .line 275
    .line 276
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    if-eqz v14, :cond_8

    .line 285
    .line 286
    if-eq v14, v9, :cond_7

    .line 287
    .line 288
    const/4 v15, 0x2

    .line 289
    if-eq v14, v15, :cond_6

    .line 290
    .line 291
    const/4 v15, 0x3

    .line 292
    if-eq v14, v15, :cond_5

    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_5
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    iget-wide v14, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 300
    .line 301
    invoke-static {v14, v15, v6, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_configABStringValue(JLjava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    goto :goto_1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    goto :goto_2

    .line 308
    :cond_6
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 309
    .line 310
    .line 311
    move-result-wide v14

    .line 312
    double-to-float v1, v14

    .line 313
    iget-wide v14, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 314
    .line 315
    invoke-static {v14, v15, v6, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_configABFloatValue(JLjava/lang/String;F)I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    goto :goto_1

    .line 320
    :cond_7
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    iget-wide v14, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 325
    .line 326
    invoke-static {v14, v15, v6, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_configABIntValue(JLjava/lang/String;I)I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    goto :goto_1

    .line 331
    :cond_8
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    iget-wide v14, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 336
    .line 337
    invoke-static {v14, v15, v6, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_configABBooleanValue(JLjava/lang/String;Z)I

    .line 338
    .line 339
    .line 340
    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    goto :goto_1

    .line 342
    :cond_9
    move-object/from16 v5, v17

    .line 343
    .line 344
    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 345
    .line 346
    move-object/from16 v17, v5

    .line 347
    .line 348
    goto :goto_0

    .line 349
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    .line 351
    .line 352
    const/4 v1, -0x1

    .line 353
    :cond_b
    if-gez v1, :cond_d

    .line 354
    .line 355
    if-eqz v13, :cond_c

    .line 356
    .line 357
    invoke-interface {v13, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectInitCallback;->onInitCallback(I)V

    .line 358
    .line 359
    .line 360
    :cond_c
    iget-object v0, v10, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 361
    .line 362
    iget v2, v10, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 363
    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    const-string v4, "iceffect config ab params error code: "

    .line 370
    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-virtual {v0, v8, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 382
    .line 383
    .line 384
    return v1

    .line 385
    :cond_d
    iget-object v0, v10, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 386
    .line 387
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTexWidth()I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    iget-object v1, v10, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 392
    .line 393
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTexHeight()I

    .line 394
    .line 395
    .line 396
    move-result v12

    .line 397
    if-eqz v0, :cond_11

    .line 398
    .line 399
    if-nez v12, :cond_e

    .line 400
    .line 401
    goto :goto_4

    .line 402
    :cond_e
    const-string v1, "device_name"

    .line 403
    .line 404
    invoke-virtual {v11, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    iget-wide v2, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 409
    .line 410
    move-object/from16 v1, p0

    .line 411
    .line 412
    move v4, v0

    .line 413
    move v5, v12

    .line 414
    invoke-direct/range {v1 .. v6}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_initEffect(JIILjava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    iget v2, v10, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 419
    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    const-string v4, "init effect width: "

    .line 426
    .line 427
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v0, ", height: "

    .line 434
    .line 435
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v0, ", result: "

    .line 442
    .line 443
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-static {v2, v7, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    if-nez v1, :cond_f

    .line 457
    .line 458
    iput-boolean v9, v10, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 459
    .line 460
    goto :goto_3

    .line 461
    :cond_f
    iget-object v0, v10, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 462
    .line 463
    iget v2, v10, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 464
    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    const-string v4, "iceffect init error code: "

    .line 471
    .line 472
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-virtual {v0, v8, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :goto_3
    if-eqz v13, :cond_10

    .line 486
    .line 487
    invoke-interface {v13, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectInitCallback;->onInitCallback(I)V

    .line 488
    .line 489
    .line 490
    :cond_10
    return v1

    .line 491
    :cond_11
    :goto_4
    iget v0, v10, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 492
    .line 493
    const-string v1, "iceffect tex size is invalid"

    .line 494
    .line 495
    invoke-static {v0, v7, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    const/4 v1, -0x1

    .line 499
    if-eqz v13, :cond_12

    .line 500
    .line 501
    invoke-interface {v13, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectInitCallback;->onInitCallback(I)V

    .line 502
    .line 503
    .line 504
    :cond_12
    iget-object v0, v10, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 505
    .line 506
    iget v2, v10, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 507
    .line 508
    const-string v3, "iceffect texture size is invalid"

    .line 509
    .line 510
    invoke-virtual {v0, v8, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 511
    .line 512
    .line 513
    :goto_5
    return v1
.end method

.method public onLogReport(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 2
    .line 3
    const-string v0, "TR_ICEffectWrapper"

    .line 4
    .line 5
    invoke-static {p1, v0, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onReceiveEffectMessage(IJJLjava/lang/String;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 3
    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v3, "onReceiveEffectMessage, msgType: "

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move v3, p1

    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v4, ", arg: "

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-object/from16 v10, p6

    .line 24
    .line 25
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v4, "TR_ICEffectWrapper"

    .line 33
    .line 34
    invoke-static {v1, v4, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v4, v0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mMsgListener:Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectMsgListener;

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    move v5, p1

    .line 42
    move-wide v6, p2

    .line 43
    move-wide v8, p4

    .line 44
    move-object/from16 v10, p6

    .line 45
    .line 46
    invoke-interface/range {v4 .. v10}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper$IEffectMsgListener;->onMessageReceived(IJJLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 17

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    iget-wide v0, v11, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-eqz v0, :cond_9

    .line 14
    .line 15
    if-eqz v12, :cond_9

    .line 16
    .line 17
    iget-boolean v0, v11, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 18
    .line 19
    if-eqz v0, :cond_9

    .line 20
    .line 21
    sget-boolean v0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 22
    .line 23
    if-eqz v0, :cond_9

    .line 24
    .line 25
    iget-object v0, v11, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 26
    .line 27
    const/16 v1, 0xa3

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v14, 0x1

    .line 34
    if-eq v0, v14, :cond_0

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_0
    iget-object v0, v11, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 39
    .line 40
    invoke-virtual {v11, v12, v13, v0}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->reverseTexture(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;Lcom/ss/texturerender/VideoSurfaceTexture;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    if-nez v15, :cond_1

    .line 45
    .line 46
    return-object v12

    .line 47
    :cond_1
    invoke-virtual {v15}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_8

    .line 52
    .line 53
    invoke-virtual {v15}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_2
    if-eqz v13, :cond_3

    .line 62
    .line 63
    iget-object v0, v11, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/ss/texturerender/TextureRenderer;->getEffectTextureManager()Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, v11, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v0, v11, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/ss/texturerender/TextureRenderer;->getEffectTextureManager()Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iget-object v3, v11, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 92
    .line 93
    const/16 v4, 0x82

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/texturerender/effect/EffectTextureManager;->genTexture(III)Lcom/ss/texturerender/effect/EffectTexture;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_0
    move-object v10, v0

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    const/4 v0, 0x0

    .line 106
    goto :goto_0

    .line 107
    :goto_1
    if-eqz v10, :cond_7

    .line 108
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    long-to-double v0, v0

    .line 114
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    div-double/2addr v0, v2

    .line 120
    mul-double/2addr v0, v2

    .line 121
    double-to-long v0, v0

    .line 122
    long-to-double v0, v0

    .line 123
    div-double v7, v0, v2

    .line 124
    .line 125
    iget-wide v1, v11, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 126
    .line 127
    invoke-virtual {v15}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v10}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-virtual {v15}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    invoke-virtual {v15}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    iget-object v9, v11, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mSeiKey:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v0, v11, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mSeiInfo:Ljava/lang/String;

    .line 146
    .line 147
    move-object/from16 v16, v0

    .line 148
    .line 149
    move-object/from16 v0, p0

    .line 150
    .line 151
    move-object v14, v10

    .line 152
    move-object/from16 v10, v16

    .line 153
    .line 154
    invoke-direct/range {v0 .. v10}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_processFrame(JIIIIDLjava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {v15}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 159
    .line 160
    .line 161
    if-nez v0, :cond_5

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    iput-boolean v0, v11, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mProcessOccurError:Z

    .line 165
    .line 166
    iget-object v0, v11, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 167
    .line 168
    invoke-virtual {v11, v14, v13, v0}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->reverseTexture(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;Lcom/ss/texturerender/VideoSurfaceTexture;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-eqz v0, :cond_4

    .line 173
    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 178
    .line 179
    .line 180
    new-instance v7, Lcom/ss/texturerender/effect/EffectTexture;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    const/16 v6, 0xde1

    .line 195
    .line 196
    const/4 v2, 0x0

    .line 197
    move-object v1, v7

    .line 198
    invoke-direct/range {v1 .. v6}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 199
    .line 200
    .line 201
    return-object v7

    .line 202
    :cond_4
    invoke-virtual {v14}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 203
    .line 204
    .line 205
    return-object v12

    .line 206
    :cond_5
    iget-boolean v1, v11, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mProcessOccurError:Z

    .line 207
    .line 208
    if-nez v1, :cond_6

    .line 209
    .line 210
    iget v1, v11, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v3, "iceffect process error code: "

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    const-string v4, "TR_ICEffectWrapper"

    .line 230
    .line 231
    invoke-static {v1, v4, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v11, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 235
    .line 236
    iget v2, v11, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 237
    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    const/16 v3, 0x12

    .line 254
    .line 255
    invoke-virtual {v1, v3, v2, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const/4 v0, 0x1

    .line 259
    iput-boolean v0, v11, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mProcessOccurError:Z

    .line 260
    .line 261
    :cond_6
    invoke-virtual {v14}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 262
    .line 263
    .line 264
    return-object v12

    .line 265
    :cond_7
    invoke-virtual {v15}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 266
    .line 267
    .line 268
    return-object v12

    .line 269
    :cond_8
    :goto_2
    invoke-virtual {v15}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 270
    .line 271
    .line 272
    :cond_9
    :goto_3
    return-object v12
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_2

    .line 8
    .line 9
    sget-boolean v4, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_composerGetNodePaths(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v4, "TR_ICEffectWrapper"

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string v1, ","

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    array-length v1, v0

    .line 35
    if-lez v1, :cond_1

    .line 36
    .line 37
    iget-wide v5, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 38
    .line 39
    array-length v1, v0

    .line 40
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_composerRemoveNodes(J[Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 44
    .line 45
    const-string v1, "remove composer nodes"

    .line 46
    .line 47
    invoke-static {v0, v4, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-wide v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 51
    .line 52
    invoke-direct {p0, v0, v1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_release(J)I

    .line 53
    .line 54
    .line 55
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 56
    .line 57
    const-string v1, "release effect"

    .line 58
    .line 59
    invoke-static {v0, v4, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-wide v2, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mProcessOccurError:Z

    .line 68
    .line 69
    const-string v0, ""

    .line 70
    .line 71
    iput-object v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mSeiInfo:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mDefaultFilter:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 75
    .line 76
    invoke-super {p0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0

    .line 81
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

.method reverseTexture(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;Lcom/ss/texturerender/VideoSurfaceTexture;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mDefaultFilter:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    invoke-static {v0, v1}, Lcom/ss/texturerender/effect/EffectFactory;->createEffect(II)Lcom/ss/texturerender/effect/AbsEffect;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mDefaultFilter:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 20
    .line 21
    const-string p2, "TR_ICEffectWrapper"

    .line 22
    .line 23
    const-string p3, "create GLDefaultFilter failed"

    .line 24
    .line 25
    invoke-static {p1, p2, p3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    invoke-virtual {v0, p3}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 30
    .line 31
    .line 32
    iget-object p3, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mDefaultFilter:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 33
    .line 34
    invoke-virtual {p3, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->init(Landroid/os/Bundle;)I

    .line 35
    .line 36
    .line 37
    iget-object p3, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mDefaultFilter:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Lcom/ss/texturerender/effect/AbsEffect;->setParentRender(Lcom/ss/texturerender/TextureRenderer;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p3, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mDefaultFilter:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 45
    .line 46
    const/16 v0, 0x1f

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p3, v0, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 50
    .line 51
    .line 52
    iget-object p3, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mDefaultFilter:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 53
    .line 54
    invoke-virtual {p3, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public sendEffectMsg(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "msg_id"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const-string v0, "msg_param1"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const-string v0, "msg_param2"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const-string v0, "msg_param3"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const/4 p1, -0x1

    .line 45
    if-eq v4, p1, :cond_1

    .line 46
    .line 47
    iget-wide v2, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 48
    .line 49
    move-object v1, p0

    .line 50
    invoke-direct/range {v1 .. v7}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_sendEffectMsg(JIIILjava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public setOption(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "action"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    :pswitch_0
    goto :goto_0

    .line 26
    :pswitch_1
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->setTextureSize(Landroid/os/Bundle;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->setRenderCacheString(Landroid/os/Bundle;)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->setSeiInfo(Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->composerRemoveNodes(Landroid/os/Bundle;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->composerAppendNodesWithTags(Landroid/os/Bundle;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->composerSetNodesWithTags(Landroid/os/Bundle;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->sendEffectMsg(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRenderCacheString(Landroid/os/Bundle;)I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    cmp-long v0, v2, v4

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "render_cache_key"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "render_cache_value"

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    iget-wide v1, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 46
    .line 47
    invoke-direct {p0, v1, v2, v0, p1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_setRenderCacheString(JLjava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :cond_1
    :goto_0
    return v1
.end method

.method public setSeiInfo(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "sei_key"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "sei_info"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "LiveSEI"

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iput-object p1, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mSeiInfo:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public setTextureSize(Landroid/os/Bundle;)I
    .locals 4

    .line 1
    sget-boolean v0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->isLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mIsInit:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string/jumbo v0, "tex_width"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string/jumbo v1, "tex_height"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-wide v1, p0, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->mHandle:J

    .line 35
    .line 36
    invoke-direct {p0, v1, v2, v0, p1}, Lcom/ss/texturerender/effect/ICEffect/ICEffectWrapper;->_setTextureSize(JII)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 42
    return p1
.end method
