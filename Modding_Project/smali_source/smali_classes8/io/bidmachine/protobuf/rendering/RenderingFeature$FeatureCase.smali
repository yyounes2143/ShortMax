.class public final enum Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;
.super Ljava/lang/Enum;
.source "RenderingFeature.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

.field public static final enum BROKEN_CREATIVE_DETECTOR:Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

.field public static final enum FEATURE_NOT_SET:Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    .line 2
    .line 3
    const-string v1, "BROKEN_CREATIVE_DETECTOR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;->BROKEN_CREATIVE_DETECTOR:Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    .line 11
    .line 12
    new-instance v1, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    .line 13
    .line 14
    const-string v4, "FEATURE_NOT_SET"

    .line 15
    .line 16
    invoke-direct {v1, v4, v3, v2}, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;->FEATURE_NOT_SET:Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;->$VALUES:[Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object p0, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;->BROKEN_CREATIVE_DETECTOR:Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_1
    sget-object p0, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;->FEATURE_NOT_SET:Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    .line 12
    .line 13
    return-object p0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;->forNumber(I)Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;->$VALUES:[Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingFeature$FeatureCase;->value:I

    .line 2
    .line 3
    return v0
.end method
