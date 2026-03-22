.class public final Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UserIntent.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClickInteraction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;",
        "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUTTONS_FIELD_NUMBER:I = 0x5

.field public static final CLICK_POS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_SIZE_FIELD_NUMBER:I = 0x2

.field public static final VIEW_POS_FIELD_NUMBER:I = 0x3

.field public static final VIEW_SIZE_FIELD_NUMBER:I = 0x4


# instance fields
.field private buttons_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;",
            ">;"
        }
    .end annotation
.end field

.field private clickPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

.field private screenSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

.field private viewPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

.field private viewSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic a(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->addAllButtons(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addAllButtons(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->ensureButtonsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addButtons(ILcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->ensureButtonsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addButtons(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->ensureButtonsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static bridge synthetic b(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->setClickPos(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic c(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->setScreenSize(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearButtons()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    return-void
.end method

.method private clearClickPos()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->clickPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 3
    .line 4
    return-void
.end method

.method private clearScreenSize()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->screenSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 3
    .line 4
    return-void
.end method

.method private clearViewPos()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 3
    .line 4
    return-void
.end method

.method private clearViewSize()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic d(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->setViewPos(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->setViewSize(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ensureButtonsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method static bridge synthetic f()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeClickPos(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->clickPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->clickPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->clickPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->clickPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeScreenSize(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->screenSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->screenSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->screenSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->screenSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeViewPos(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeViewSize(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private removeButtons(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->ensureButtonsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setButtons(ILcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->ensureButtonsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setClickPos(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->clickPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 5
    .line 6
    return-void
.end method

.method private setScreenSize(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->screenSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 5
    .line 6
    return-void
.end method

.method private setViewPos(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 5
    .line 6
    return-void
.end method

.method private setViewSize(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object p2, Lcom/moloco/sdk/r;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, p2, p1

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_2
    sget-object p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit p2

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_2
    return-object p1

    .line 54
    :pswitch_3
    sget-object p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string v0, "clickPos_"

    .line 58
    .line 59
    const-string v1, "screenSize_"

    .line 60
    .line 61
    const-string/jumbo v2, "viewPos_"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v3, "viewSize_"

    .line 65
    .line 66
    .line 67
    const-string v4, "buttons_"

    .line 68
    .line 69
    const-class v5, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;

    .line 70
    .line 71
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\t\u0002\t\u0003\t\u0004\t\u0005\u001b"

    .line 76
    .line 77
    sget-object p3, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 78
    .line 79
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;

    .line 85
    .line 86
    invoke-direct {p1, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;-><init>(Lcom/moloco/sdk/s;)V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 91
    .line 92
    invoke-direct {p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;-><init>()V

    .line 93
    .line 94
    .line 95
    return-object p1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getButtons(I)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;

    .line 8
    .line 9
    return-object p1
.end method

.method public getButtonsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getButtonsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getButtonsOrBuilder(I)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$b;

    .line 8
    .line 9
    return-object p1
.end method

.method public getButtonsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickPos()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->clickPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getScreenSize()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->screenSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getViewPos()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getViewSize()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public hasClickPos()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->clickPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasScreenSize()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->screenSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasViewPos()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewPos_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasViewSize()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->viewSize_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
