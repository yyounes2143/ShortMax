.class public final Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;
.super Landroidx/savedstate/serialization/serializers/ParcelableSerializer;
.source "BuiltInSerializer.android.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/savedstate/serialization/serializers/ParcelableSerializer<",
        "Landroid/os/Parcelable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/savedstate/serialization/serializers/ParcelableSerializer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
