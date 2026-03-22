.class public final Lcom/google/protobuf/TimestampKt$Dsl;
.super Ljava/lang/Object;
.source "TimestampKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TimestampKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TimestampKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/TimestampKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lcom/google/protobuf/Timestamp$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/TimestampKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/protobuf/TimestampKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/protobuf/TimestampKt$Dsl;->Companion:Lcom/google/protobuf/TimestampKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Timestamp$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/TimestampKt$Dsl;->_builder:Lcom/google/protobuf/Timestamp$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Timestamp$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/TimestampKt$Dsl;-><init>(Lcom/google/protobuf/Timestamp$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TimestampKt$Dsl;->_builder:Lcom/google/protobuf/Timestamp$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.build()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/google/protobuf/Timestamp;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearNanos()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TimestampKt$Dsl;->_builder:Lcom/google/protobuf/Timestamp$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->clearNanos()Lcom/google/protobuf/Timestamp$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSeconds()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TimestampKt$Dsl;->_builder:Lcom/google/protobuf/Timestamp$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->clearSeconds()Lcom/google/protobuf/Timestamp$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getNanos()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TimestampKt$Dsl;->_builder:Lcom/google/protobuf/Timestamp$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->getNanos()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getSeconds()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TimestampKt$Dsl;->_builder:Lcom/google/protobuf/Timestamp$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->getSeconds()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final setNanos(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TimestampKt$Dsl;->_builder:Lcom/google/protobuf/Timestamp$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->setNanos(I)Lcom/google/protobuf/Timestamp$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSeconds(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TimestampKt$Dsl;->_builder:Lcom/google/protobuf/Timestamp$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/google/protobuf/Timestamp$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
