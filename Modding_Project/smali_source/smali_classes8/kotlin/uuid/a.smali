.class Lkotlin/uuid/a;
.super Ljava/lang/Object;
.source "UuidJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUuidJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UuidJVM.kt\nkotlin/uuid/UuidKt__UuidJVMKt\n*L\n1#1,257:1\n257#1:258\n257#1:259\n257#1:260\n257#1:261\n257#1:262\n257#1:263\n257#1:264\n257#1:265\n*S KotlinDebug\n*F\n+ 1 UuidJVM.kt\nkotlin/uuid/UuidKt__UuidJVMKt\n*L\n119#1:258\n120#1:259\n164#1:260\n165#1:261\n204#1:262\n205#1:263\n251#1:264\n252#1:265\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lkotlin/uuid/Uuid;)Ljava/lang/Object;
    .locals 5
    .param p0    # Lkotlin/uuid/Uuid;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "uuid"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/uuid/UuidSerialized;

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->g()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->f()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/uuid/UuidSerialized;-><init>(JJ)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
