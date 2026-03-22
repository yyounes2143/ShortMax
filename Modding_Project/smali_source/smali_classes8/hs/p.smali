.class public final Lhs/p;
.super Ljava/lang/Object;
.source "PacketJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPacketJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PacketJVM.kt\nio/ktor/utils/io/core/PacketJVMKt\n+ 2 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n*L\n1#1,31:1\n98#2,2:32\n*S KotlinDebug\n*F\n+ 1 PacketJVM.kt\nio/ktor/utils/io/core/PacketJVMKt\n*L\n18#1:32,2\n*E\n"
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "max.copy.size"

    .line 2
    .line 3
    const/16 v1, 0x1f4

    .line 4
    .line 5
    invoke-static {v0, v1}, Lks/a;->a(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lhs/p;->a:I

    .line 10
    .line 11
    return-void
.end method

.method public static final a()I
    .locals 1

    .line 1
    sget v0, Lhs/p;->a:I

    .line 2
    .line 3
    return v0
.end method
