.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/RoomDatabase;
.source "WorkDatabase.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/room/Database;
    autoMigrations = {
        .subannotation Landroidx/room/AutoMigration;
            from = 0xd
            to = 0xe
        .end subannotation,
        .subannotation Landroidx/room/AutoMigration;
            from = 0xe
            spec = Landroidx/work/impl/AutoMigration_14_15;
            to = 0xf
        .end subannotation
    }
    entities = {
        Landroidx/work/impl/model/Dependency;,
        Landroidx/work/impl/model/WorkSpec;,
        Landroidx/work/impl/model/WorkTag;,
        Landroidx/work/impl/model/SystemIdInfo;,
        Landroidx/work/impl/model/WorkName;,
        Landroidx/work/impl/model/WorkProgress;,
        Landroidx/work/impl/model/Preference;
    }
    version = 0x10
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Landroidx/work/Data;,
        Landroidx/work/impl/model/WorkTypeConverters;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/work/impl/WorkDatabase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/work/impl/WorkDatabase$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/work/impl/WorkDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/work/impl/WorkDatabase;->Companion:Landroidx/work/impl/WorkDatabase$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final create(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/work/impl/WorkDatabase;->Companion:Landroidx/work/impl/WorkDatabase$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroidx/work/impl/WorkDatabase$Companion;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public abstract dependencyDao()Landroidx/work/impl/model/DependencyDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract preferenceDao()Landroidx/work/impl/model/PreferenceDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract rawWorkInfoDao()Landroidx/work/impl/model/RawWorkInfoDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract workNameDao()Landroidx/work/impl/model/WorkNameDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract workProgressDao()Landroidx/work/impl/model/WorkProgressDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract workSpecDao()Landroidx/work/impl/model/WorkSpecDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract workTagDao()Landroidx/work/impl/model/WorkTagDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
