.class public final Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;"
    }
.end annotation


# instance fields
.field private content_:Ljava/lang/Object;

.field private fill_:Ljava/lang/Object;

.field private fontStyle_:I

.field private height_:I

.field private hideafter_:I

.field private margin_:F

.field private opacity_:F

.field private outlined_:Z

.field private padding_:F

.field private shadow_:Ljava/lang/Object;

.field private strokeWidth_:F

.field private stroke_:Ljava/lang/Object;

.field private style_:Ljava/lang/Object;

.field private visible_:Z

.field private width_:I

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 13
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 20
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->isInitialized()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 2

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$402(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$502(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fontStyle_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$602(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I

    .line 7
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->height_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$702(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I

    .line 8
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->hideafter_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$802(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I

    .line 9
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->margin_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$902(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F

    .line 10
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->opacity_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1002(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F

    .line 11
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->outlined_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1102(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Z)Z

    .line 12
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->padding_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1202(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F

    .line 13
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1302(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1402(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->strokeWidth_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1502(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;F)F

    .line 16
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1602(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->visible_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1702(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Z)Z

    .line 18
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->width_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1802(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;I)I

    .line 19
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1902(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2002(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clear()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fontStyle_:I

    .line 9
    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->height_:I

    .line 10
    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->hideafter_:I

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->margin_:F

    .line 12
    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->opacity_:F

    .line 13
    iput-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->outlined_:Z

    .line 14
    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->padding_:F

    .line 15
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 17
    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->strokeWidth_:F

    .line 18
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 19
    iput-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->visible_:Z

    .line 20
    iput v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->width_:I

    .line 21
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearContent()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getContent()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public clearFill()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFill()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearFontStyle()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fontStyle_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearHeight()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->height_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearHideafter()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->hideafter_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearMargin()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->margin_:F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public clearOpacity()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->opacity_:F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearOutlined()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->outlined_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearPadding()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->padding_:F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearShadow()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getShadow()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearStroke()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStroke()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearStrokeWidth()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->strokeWidth_:F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearStyle()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStyle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearVisible()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->visible_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearWidth()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->width_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearX()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getX()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearY()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getY()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->clone()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

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

.method public getContentBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFill()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

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

.method public getFillBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

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

.method public getFontStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fontStyle_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->height_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHideafter()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->hideafter_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMargin()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->margin_:F

    .line 2
    .line 3
    return v0
.end method

.method public getOpacity()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->opacity_:F

    .line 2
    .line 3
    return v0
.end method

.method public getOutlined()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->outlined_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->padding_:F

    .line 2
    .line 3
    return v0
.end method

.method public getShadow()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

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

.method public getShadowBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

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

.method public getStroke()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

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

.method public getStrokeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

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

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->strokeWidth_:F

    .line 2
    .line 3
    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

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

.method public getStyleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

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

.method public getVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->visible_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->width_:I

    .line 2
    .line 3
    return v0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

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

.method public getXBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

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

.method public getY()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

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

.method public getYBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

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

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

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

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2200()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
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

    .line 58
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 59
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$400(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFill()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$500(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFontStyle()I

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getFontStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setFontStyle(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 19
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHeight()I

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setHeight(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 21
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHideafter()I

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getHideafter()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setHideafter(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 23
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getMargin()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getMargin()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setMargin(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 25
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOpacity()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOpacity()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setOpacity(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 27
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOutlined()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getOutlined()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setOutlined(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 29
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getPadding()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getPadding()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setPadding(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 31
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getShadow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 32
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1300(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 34
    :cond_a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStroke()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 35
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1400(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 37
    :cond_b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    .line 38
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setStrokeWidth(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 39
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 40
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1600(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 42
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setVisible(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 44
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getWidth()I

    move-result v0

    if-eqz v0, :cond_f

    .line 45
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setWidth(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 46
    :cond_f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 47
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$1900(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 49
    :cond_10
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 50
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2000(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 52
    :cond_11
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2100(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 53
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public setContent(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setContentBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->content_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public setFill(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setFillBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2400(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fill_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setFontStyle(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->fontStyle_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setHeight(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->height_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setHideafter(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->hideafter_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMargin(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->margin_:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOpacity(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->opacity_:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOutlined(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->outlined_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPadding(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->padding_:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public setShadow(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setShadowBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2500(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->shadow_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setStroke(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setStrokeBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->stroke_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setStrokeWidth(F)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->strokeWidth_:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setStyle(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setStyleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2700(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->style_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    return-object p1
.end method

.method public setVisible(Z)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->visible_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setWidth(I)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->width_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setX(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setXBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2800(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->x_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setY(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setYBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->access$2900(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->y_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
