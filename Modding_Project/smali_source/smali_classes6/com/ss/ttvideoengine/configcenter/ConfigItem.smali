.class public Lcom/ss/ttvideoengine/configcenter/ConfigItem;
.super Ljava/lang/Object;
.source "ConfigItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/configcenter/ConfigItem$ValueType;,
        Lcom/ss/ttvideoengine/configcenter/ConfigItem$ModuleType;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/ss/ttvideoengine/configcenter/ConfigItem;

.field public static final MODULE_TYPE_ENGINE:I = 0x0

.field public static final MODULE_TYPE_MDL:I = 0x2

.field public static final MODULE_TYPE_PLAYER:I = 0x1

.field public static final MODULE_TYPE_STRATEGY_CENTER:I = 0x3

.field public static final VALUE_TYPE_FLOAT:I = 0x3

.field public static final VALUE_TYPE_INT:I = 0x1

.field public static final VALUE_TYPE_LONG:I = 0x2

.field public static final VALUE_TYPE_STRING:I = 0x4


# instance fields
.field protected final configKey:I

.field protected final itemValue:Ljava/lang/Object;

.field protected final moduleType:I

.field protected final priority:I

.field protected final valueType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 2
    .line 3
    const/4 v4, 0x1

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    move-object v0, v6

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/configcenter/ConfigItem;-><init>(ILjava/lang/Object;III)V

    .line 10
    .line 11
    .line 12
    sput-object v6, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->EMPTY:Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->configKey:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->itemValue:Ljava/lang/Object;

    .line 7
    .line 8
    iput p4, p0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->valueType:I

    .line 9
    .line 10
    iput p5, p0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->moduleType:I

    .line 11
    .line 12
    iput p3, p0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->priority:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->itemValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
