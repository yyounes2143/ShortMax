.class public final Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;
.super Ljava/lang/Object;
.source "EngineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/configcenter/EngineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private final builderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/ttvideoengine/configcenter/ConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/ttvideoengine/configcenter/EngineConfig;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/configcenter/EngineConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;->this$0:Lcom/ss/ttvideoengine/configcenter/EngineConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;->builderMap:Ljava/util/Map;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public build()Lcom/ss/ttvideoengine/configcenter/EngineConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/EngineConfig;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;->builderMap:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/configcenter/EngineConfig;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public setFloatOption(IF)Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;->this$0:Lcom/ss/ttvideoengine/configcenter/EngineConfig;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/configcenter/EngineConfig;->access$000(Lcom/ss/ttvideoengine/configcenter/EngineConfig;)Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;->createFloatOption(IF)Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;->builderMap:Ljava/util/Map;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public setIntOption(II)Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;->this$0:Lcom/ss/ttvideoengine/configcenter/EngineConfig;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/configcenter/EngineConfig;->access$000(Lcom/ss/ttvideoengine/configcenter/EngineConfig;)Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;->createIntOption(II)Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;->builderMap:Ljava/util/Map;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public setLongOption(II)Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;->this$0:Lcom/ss/ttvideoengine/configcenter/EngineConfig;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/configcenter/EngineConfig;->access$000(Lcom/ss/ttvideoengine/configcenter/EngineConfig;)Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;->createIntOption(II)Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;->builderMap:Ljava/util/Map;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public setStringOption(ILjava/lang/String;)Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;->this$0:Lcom/ss/ttvideoengine/configcenter/EngineConfig;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/configcenter/EngineConfig;->access$000(Lcom/ss/ttvideoengine/configcenter/EngineConfig;)Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;->createStringOption(ILjava/lang/String;)Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/configcenter/EngineConfig$Builder;->builderMap:Ljava/util/Map;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object p0
.end method
