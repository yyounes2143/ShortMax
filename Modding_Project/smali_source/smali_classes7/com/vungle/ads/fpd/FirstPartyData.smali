.class public final Lcom/vungle/ads/fpd/FirstPartyData;
.super Ljava/lang/Object;
.source "FirstPartyData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/fpd/FirstPartyData$Companion;,
        Lcom/vungle/ads/fpd/FirstPartyData$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/fpd/FirstPartyData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _customData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile _demographic:Lcom/vungle/ads/fpd/Demographic;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile _location:Lcom/vungle/ads/fpd/Location;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile _revenue:Lcom/vungle/ads/fpd/Revenue;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile _sessionContext:Lcom/vungle/ads/fpd/SessionContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/fpd/FirstPartyData$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/fpd/FirstPartyData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/fpd/FirstPartyData;->Companion:Lcom/vungle/ads/fpd/FirstPartyData$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/fpd/SessionContext;Lcom/vungle/ads/fpd/Demographic;Lcom/vungle/ads/fpd/Location;Lcom/vungle/ads/fpd/Revenue;Ljava/util/Map;Lvt/r2;)V
    .locals 1
    .annotation runtime Lms/c;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    const/4 v0, 0x0

    if-nez p7, :cond_0

    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_sessionContext:Lcom/vungle/ads/fpd/SessionContext;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_sessionContext:Lcom/vungle/ads/fpd/SessionContext;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_demographic:Lcom/vungle/ads/fpd/Demographic;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_demographic:Lcom/vungle/ads/fpd/Demographic;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_location:Lcom/vungle/ads/fpd/Location;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_location:Lcom/vungle/ads/fpd/Location;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_revenue:Lcom/vungle/ads/fpd/Revenue;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_revenue:Lcom/vungle/ads/fpd/Revenue;

    :goto_3
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_customData:Ljava/util/Map;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_customData:Ljava/util/Map;

    :goto_4
    return-void
.end method

.method private static synthetic get_customData$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic get_demographic$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic get_location$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic get_revenue$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic get_sessionContext$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/fpd/FirstPartyData;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .param p0    # Lcom/vungle/ads/fpd/FirstPartyData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/encoding/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "self"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "output"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "serialDesc"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_sessionContext:Lcom/vungle/ads/fpd/SessionContext;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :goto_0
    sget-object v1, Lcom/vungle/ads/fpd/SessionContext$$serializer;->INSTANCE:Lcom/vungle/ads/fpd/SessionContext$$serializer;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_sessionContext:Lcom/vungle/ads/fpd/SessionContext;

    .line 31
    .line 32
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_demographic:Lcom/vungle/ads/fpd/Demographic;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    :goto_1
    sget-object v1, Lcom/vungle/ads/fpd/Demographic$$serializer;->INSTANCE:Lcom/vungle/ads/fpd/Demographic$$serializer;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_demographic:Lcom/vungle/ads/fpd/Demographic;

    .line 50
    .line 51
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    const/4 v0, 0x2

    .line 55
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_location:Lcom/vungle/ads/fpd/Location;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    :goto_2
    sget-object v1, Lcom/vungle/ads/fpd/Location$$serializer;->INSTANCE:Lcom/vungle/ads/fpd/Location$$serializer;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_location:Lcom/vungle/ads/fpd/Location;

    .line 69
    .line 70
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    const/4 v0, 0x3

    .line 74
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_revenue:Lcom/vungle/ads/fpd/Revenue;

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    :goto_3
    sget-object v1, Lcom/vungle/ads/fpd/Revenue$$serializer;->INSTANCE:Lcom/vungle/ads/fpd/Revenue$$serializer;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_revenue:Lcom/vungle/ads/fpd/Revenue;

    .line 88
    .line 89
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_7
    const/4 v0, 0x4

    .line 93
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_8
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_customData:Ljava/util/Map;

    .line 101
    .line 102
    if-eqz v1, :cond_9

    .line 103
    .line 104
    :goto_4
    new-instance v1, Lvt/a1;

    .line 105
    .line 106
    sget-object v2, Lvt/w2;->a:Lvt/w2;

    .line 107
    .line 108
    invoke-direct {v1, v2, v2}, Lvt/a1;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_customData:Ljava/util/Map;

    .line 112
    .line 113
    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_9
    return-void
.end method


# virtual methods
.method public final declared-synchronized clearAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_sessionContext:Lcom/vungle/ads/fpd/SessionContext;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_demographic:Lcom/vungle/ads/fpd/Demographic;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_location:Lcom/vungle/ads/fpd/Location;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_revenue:Lcom/vungle/ads/fpd/Revenue;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_customData:Ljava/util/Map;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_customData:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method public final declared-synchronized getCustomData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_customData:Ljava/util/Map;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_customData:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public final declared-synchronized getDemographic()Lcom/vungle/ads/fpd/Demographic;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_demographic:Lcom/vungle/ads/fpd/Demographic;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/vungle/ads/fpd/Demographic;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/vungle/ads/fpd/Demographic;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_demographic:Lcom/vungle/ads/fpd/Demographic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public final declared-synchronized getLocation()Lcom/vungle/ads/fpd/Location;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_location:Lcom/vungle/ads/fpd/Location;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/vungle/ads/fpd/Location;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/vungle/ads/fpd/Location;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_location:Lcom/vungle/ads/fpd/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public final declared-synchronized getRevenue()Lcom/vungle/ads/fpd/Revenue;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_revenue:Lcom/vungle/ads/fpd/Revenue;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/vungle/ads/fpd/Revenue;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/vungle/ads/fpd/Revenue;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_revenue:Lcom/vungle/ads/fpd/Revenue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public final declared-synchronized getSessionContext()Lcom/vungle/ads/fpd/SessionContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_sessionContext:Lcom/vungle/ads/fpd/SessionContext;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/vungle/ads/fpd/SessionContext;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/vungle/ads/fpd/SessionContext;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->_sessionContext:Lcom/vungle/ads/fpd/SessionContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method
