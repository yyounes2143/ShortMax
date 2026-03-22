.class final Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;
.super Ljava/lang/Object;
.source "NewInstanceSchemas.java"


# annotations
.annotation runtime Landroidx/datastore/preferences/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

.field private static final LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;->loadSchemaForFullRuntime()Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    .line 6
    .line 7
    new-instance v0, Landroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static full()Landroidx/datastore/preferences/protobuf/NewInstanceSchema;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    .line 2
    .line 3
    return-object v0
.end method

.method static lite()Landroidx/datastore/preferences/protobuf/NewInstanceSchema;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    .line 2
    .line 3
    return-object v0
.end method

.method private static loadSchemaForFullRuntime()Landroidx/datastore/preferences/protobuf/NewInstanceSchema;
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/Protobuf;->assumeLiteRuntime:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    const-string v0, "androidx.datastore.preferences.protobuf.NewInstanceSchemaFull"

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v3, v2, [Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/datastore/preferences/protobuf/NewInstanceSchema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    return-object v0

    .line 29
    :catch_0
    return-object v1
.end method
