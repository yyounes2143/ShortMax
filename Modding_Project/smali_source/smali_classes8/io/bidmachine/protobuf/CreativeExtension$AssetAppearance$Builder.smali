.class public final Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;"
    }
.end annotation


# instance fields
.field private autorotate_:Z

.field private backgroundColor_:Ljava/lang/Object;

.field private closableViewBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private closeTime_:F

.field private countdownBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private ctaBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private duration_:I

.field private ignoresSafeAreaLayoutGuide_:Z

.field private muteAssetBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private progressBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private useCustomClose_:Z

.field private videoAssetBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;-><init>()V

    return-void
.end method

.method private getClosableViewFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getCountdownFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getCtaFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getMuteAssetFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getProgressFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getVideoAssetFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3300()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 2

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    .line 4
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closeTime_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3502(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;F)F

    .line 5
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->duration_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3602(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;I)I

    .line 6
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ignoresSafeAreaLayoutGuide_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3702(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z

    .line 7
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->useCustomClose_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3802(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z

    .line 8
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->autorotate_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$3902(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z

    .line 9
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_0

    .line 10
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4002(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4002(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 12
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_1

    .line 13
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4102(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4102(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 15
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_2

    .line 16
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4202(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4202(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 18
    :goto_2
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_3

    .line 19
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4302(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4302(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 21
    :goto_3
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_4

    .line 22
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4402(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_4

    .line 23
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4402(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 24
    :goto_4
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_5

    .line 25
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4502(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_5

    .line 26
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4502(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 27
    :goto_5
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4602(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closeTime_:F

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->duration_:I

    .line 8
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 9
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->useCustomClose_:Z

    .line 10
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->autorotate_:Z

    .line 11
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_0

    .line 13
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    :goto_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_1

    .line 16
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_1

    .line 17
    :cond_1
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 18
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    .line 19
    :goto_1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_2

    .line 20
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_2

    .line 21
    :cond_2
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 22
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    :goto_2
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_3

    .line 24
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_3

    .line 25
    :cond_3
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 26
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    .line 27
    :goto_3
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_4

    .line 28
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_4

    .line 29
    :cond_4
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 30
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 31
    :goto_4
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_5

    .line 32
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_5

    .line 33
    :cond_5
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 34
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 35
    :goto_5
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAutorotate()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->autorotate_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearBackgroundColor()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColor()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearCloseTime()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closeTime_:F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearCta()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearDuration()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->duration_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public clearIgnoresSafeAreaLayoutGuide()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public clearProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearUseCustomClose()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->useCustomClose_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAutorotate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->autorotate_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 19
    .line 20
    return-object v0
.end method

.method public getClosableViewBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getClosableViewFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getClosableViewOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getCloseTime()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closeTime_:F

    .line 2
    .line 3
    return v0
.end method

.method public getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 19
    .line 20
    return-object v0
.end method

.method public getCountdownBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getCountdownFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getCountdownOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 19
    .line 20
    return-object v0
.end method

.method public getCtaBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getCtaFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getCtaOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->duration_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIgnoresSafeAreaLayoutGuide()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMuteAssetBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getMuteAssetFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getMuteAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 19
    .line 20
    return-object v0
.end method

.method public getProgressBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getProgressFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getProgressOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getUseCustomClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->useCustomClose_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 19
    .line 20
    return-object v0
.end method

.method public getVideoAssetBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->getVideoAssetFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getVideoAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public hasClosableView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasCountdown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasCta()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasMuteAsset()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasVideoAsset()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public mergeClosableView(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeCountdown(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeCta(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4800()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 43
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCloseTime()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCloseTime()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setCloseTime(F)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDuration()I

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setDuration(I)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setIgnoresSafeAreaLayoutGuide(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getUseCustomClose()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getUseCustomClose()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setUseCustomClose(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getAutorotate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getAutorotate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setAutorotate(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCountdown()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeCountdown(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 23
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasClosableView()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeClosableView(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 25
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeProgress(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 27
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCta()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeCta(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 29
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasMuteAsset()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeMuteAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 31
    :cond_a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasVideoAsset()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeVideoAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 33
    :cond_b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 34
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4600(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 36
    :cond_c
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4700(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 37
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public mergeMuteAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeProgress(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public mergeVideoAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public setAutorotate(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->autorotate_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setBackgroundColor(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBackgroundColorBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->access$4900(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->backgroundColor_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setClosableView(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setClosableView(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableViewBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setCloseTime(F)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->closeTime_:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setCountdown(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setCountdown(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setCta(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setCta(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ctaBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setDuration(I)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->duration_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public setIgnoresSafeAreaLayoutGuide(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMuteAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setMuteAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAssetBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setProgress(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setProgress(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progressBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    return-object p1
.end method

.method public setUseCustomClose(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->useCustomClose_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setVideoAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setVideoAsset(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAssetBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method
