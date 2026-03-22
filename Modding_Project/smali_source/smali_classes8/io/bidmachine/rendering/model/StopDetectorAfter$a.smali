.class public final Lio/bidmachine/rendering/model/StopDetectorAfter$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/StopDetectorAfter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/model/StopDetectorAfter$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/bidmachine/rendering/model/StopDetectorAfter;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/StopDetectorAfter;->values()[Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, [Lyq/k;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lyq/s;->k([Lyq/k;Ljava/lang/String;)Lyq/k;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 12
    .line 13
    return-object p1
.end method
