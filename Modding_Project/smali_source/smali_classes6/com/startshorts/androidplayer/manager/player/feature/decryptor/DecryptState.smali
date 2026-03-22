.class public final enum Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;
.super Ljava/lang/Enum;
.source "DecryptState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

.field public static final enum END:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

.field public static final enum START:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->START:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->END:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 2
    .line 3
    const-string v1, "START"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->START:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 11
    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 13
    .line 14
    const-string v1, "END"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->END:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 21
    .line 22
    invoke-static {}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->$values()[Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->$VALUES:[Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->$ENTRIES:Lss/a;

    .line 33
    .line 34
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
    iput p3, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;
    .locals 1

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->$VALUES:[Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->value:I

    .line 2
    .line 3
    return v0
.end method
