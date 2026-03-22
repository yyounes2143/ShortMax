.class public final Lhs/j;
.super Lhs/l;
.source "ByteReadPacket.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhs/j$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final i:Lhs/j$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Lhs/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lhs/j$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhs/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhs/j;->i:Lhs/j$a;

    .line 8
    .line 9
    new-instance v0, Lhs/j;

    .line 10
    .line 11
    sget-object v1, Lis/a;->j:Lis/a$d;

    .line 12
    .line 13
    invoke-virtual {v1}, Lis/a$d;->a()Lis/a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    invoke-virtual {v1}, Lis/a$d;->b()Lio/ktor/utils/io/pool/b;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v2, v3, v4, v1}, Lhs/j;-><init>(Lis/a;JLio/ktor/utils/io/pool/b;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lhs/j;->j:Lhs/j;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lis/a;JLio/ktor/utils/io/pool/b;)V
    .locals 1
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/ktor/utils/io/pool/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lis/a;",
            "J",
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "head"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pool"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lhs/l;-><init>(Lis/a;JLio/ktor/utils/io/pool/b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lhs/l;->b0()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic A0()Lhs/j;
    .locals 1

    .line 1
    sget-object v0, Lhs/j;->j:Lhs/j;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected final l()V
    .locals 0

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ByteReadPacket["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x5d

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method protected final u()Lis/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected final v(Ljava/nio/ByteBuffer;II)I
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "destination"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method
