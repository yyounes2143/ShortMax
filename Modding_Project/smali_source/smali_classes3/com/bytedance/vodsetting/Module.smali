.class public Lcom/bytedance/vodsetting/Module;
.super Ljava/lang/Object;
.source "Module.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vodsetting/Module$MdlKey;,
        Lcom/bytedance/vodsetting/Module$UploadKey;,
        Lcom/bytedance/vodsetting/Module$VodKey;,
        Lcom/bytedance/vodsetting/Module$CommonKey;,
        Lcom/bytedance/vodsetting/Module$ResponseKey;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "all"

.field public static final BIZ_PORTRAIT:Ljava/lang/String; = "biz_portrait"

.field public static final COMMON:Ljava/lang/String; = "common"

.field public static final CustomSettings:Ljava/lang/String; = "custom_settings"

.field public static final GeneralSettings:Ljava/lang/String; = "general_settings"

.field public static final MDL:Ljava/lang/String; = "mdl"

.field public static final MODULE_BIZ_PORTRAIT:I = 0x10

.field public static final MODULE_COMMON:I = 0x8

.field public static final MODULE_MDL:I = 0x2

.field public static final MODULE_UPLOAD:I = 0x4

.field public static final MODULE_VOD:I = 0x1

.field public static final UPLOAD:Ljava/lang/String; = "upload"

.field public static final VOD:Ljava/lang/String; = "vod"


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
