.class public Landroidx/room/RoomWarnings;
.super Ljava/lang/Object;
.source "RoomWarnings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomWarnings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final AMBIGUOUS_COLUMN_IN_RESULT:Ljava/lang/String; = "ROOM_AMBIGUOUS_COLUMN_IN_RESULT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CANNOT_CREATE_VERIFICATION_DATABASE:Ljava/lang/String; = "ROOM_CANNOT_CREATE_VERIFICATION_DATABASE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CURSOR_MISMATCH:Ljava/lang/String; = "ROOM_CURSOR_MISMATCH"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/room/RoomWarnings$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_CONSTRUCTOR:Ljava/lang/String; = "ROOM_DEFAULT_CONSTRUCTOR"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DOES_NOT_IMPLEMENT_EQUALS_HASHCODE:Ljava/lang/String; = "ROOM_TYPE_DOES_NOT_IMPLEMENT_EQUALS_HASHCODE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INDEX_FROM_EMBEDDED_ENTITY_IS_DROPPED:Ljava/lang/String; = "ROOM_EMBEDDED_ENTITY_INDEX_IS_DROPPED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INDEX_FROM_EMBEDDED_FIELD_IS_DROPPED:Ljava/lang/String; = "ROOM_EMBEDDED_INDEX_IS_DROPPED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INDEX_FROM_PARENT_FIELD_IS_DROPPED:Ljava/lang/String; = "ROOM_PARENT_FIELD_INDEX_IS_DROPPED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INDEX_FROM_PARENT_IS_DROPPED:Ljava/lang/String; = "ROOM_PARENT_INDEX_IS_DROPPED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MISMATCHED_GETTER:Ljava/lang/String; = "ROOM_MISMATCHED_GETTER_TYPE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MISMATCHED_SETTER:Ljava/lang/String; = "ROOM_MISMATCHED_SETTER_TYPE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MISSING_INDEX_ON_FOREIGN_KEY_CHILD:Ljava/lang/String; = "ROOM_MISSING_FOREIGN_KEY_CHILD_INDEX"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MISSING_INDEX_ON_JUNCTION:Ljava/lang/String; = "MISSING_INDEX_ON_JUNCTION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MISSING_JAVA_TMP_DIR:Ljava/lang/String; = "ROOM_MISSING_JAVA_TMP_DIR"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MISSING_SCHEMA_LOCATION:Ljava/lang/String; = "ROOM_MISSING_SCHEMA_LOCATION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PRIMARY_KEY_FROM_EMBEDDED_IS_DROPPED:Ljava/lang/String; = "ROOM_EMBEDDED_PRIMARY_KEY_IS_DROPPED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final QUERY_MISMATCH:Ljava/lang/String; = "ROOM_QUERY_MISMATCH"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RELATION_QUERY_WITHOUT_TRANSACTION:Ljava/lang/String; = "ROOM_RELATION_QUERY_WITHOUT_TRANSACTION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RELATION_TYPE_MISMATCH:Ljava/lang/String; = "ROOM_RELATION_TYPE_MISMATCH"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNNECESSARY_NULLABILITY_IN_DAO_RETURN_TYPE:Ljava/lang/String; = "ROOM_UNNECESSARY_NULLABILITY_IN_DAO_RETURN_TYPE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/room/RoomWarnings$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/room/RoomWarnings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/room/RoomWarnings;->Companion:Landroidx/room/RoomWarnings$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
