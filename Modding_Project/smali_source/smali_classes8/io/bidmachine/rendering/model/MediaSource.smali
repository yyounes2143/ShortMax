.class public abstract Lio/bidmachine/rendering/model/MediaSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/MediaSource$DeliveryType;,
        Lio/bidmachine/rendering/model/MediaSource$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lio/bidmachine/rendering/model/MediaSource$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/MediaSource$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/MediaSource$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/rendering/model/MediaSource;->b:Lio/bidmachine/rendering/model/MediaSource$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lio/bidmachine/rendering/model/MediaSource$DeliveryType;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/MediaSource;->a:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/model/MediaSource$DeliveryType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/model/MediaSource;-><init>(Lio/bidmachine/rendering/model/MediaSource$DeliveryType;)V

    return-void
.end method


# virtual methods
.method public a()Lio/bidmachine/rendering/model/MediaSource$DeliveryType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/MediaSource;->a:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    .line 2
    .line 3
    return-object v0
.end method
