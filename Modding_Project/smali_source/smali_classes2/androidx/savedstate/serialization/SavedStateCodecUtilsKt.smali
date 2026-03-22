.class public final Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;
.super Ljava/lang/Object;
.source "SavedStateCodecUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSavedStateCodecUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateCodecUtils.kt\nandroidx/savedstate/serialization/SavedStateCodecUtilsKt\n+ 2 BuiltinSerializers.kt\nkotlinx/serialization/builtins/BuiltinSerializersKt\n*L\n1#1,41:1\n194#2:42\n*S KotlinDebug\n*F\n+ 1 SavedStateCodecUtils.kt\nandroidx/savedstate/serialization/SavedStateCodecUtilsKt\n*L\n40#1:42\n*E\n"
    }
.end annotation


# static fields
.field private static final booleanArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final charArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final doubleArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final floatArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final intArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final intListDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final longArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final stringArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final stringListDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    .line 2
    .line 3
    invoke-static {v0}, Ltt/a;->A(Lkotlin/jvm/internal/IntCompanionObject;)Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ltt/a;->h(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->intListDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 16
    .line 17
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 18
    .line 19
    invoke-static {v0}, Ltt/a;->D(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Ltt/a;->h(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->stringListDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 32
    .line 33
    invoke-static {}, Ltt/a;->b()Lkotlinx/serialization/KSerializer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->booleanArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 42
    .line 43
    invoke-static {}, Ltt/a;->d()Lkotlinx/serialization/KSerializer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->charArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 52
    .line 53
    invoke-static {}, Ltt/a;->e()Lkotlinx/serialization/KSerializer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->doubleArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 62
    .line 63
    invoke-static {}, Ltt/a;->f()Lkotlinx/serialization/KSerializer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->floatArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 72
    .line 73
    invoke-static {}, Ltt/a;->g()Lkotlinx/serialization/KSerializer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->intArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 82
    .line 83
    invoke-static {}, Ltt/a;->i()Lkotlinx/serialization/KSerializer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->longArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 92
    .line 93
    invoke-static {v0}, Ltt/a;->D(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-class v1, Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1, v0}, Ltt/a;->a(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->stringArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 112
    .line 113
    return-void
.end method

.method public static final getBooleanArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->booleanArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getCharArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->charArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDoubleArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->doubleArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getFloatArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->floatArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getIntArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->intArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getIntListDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->intListDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getLongArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->longArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getStringArrayDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->stringArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getStringArrayDescriptor$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getStringListDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->stringListDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method
