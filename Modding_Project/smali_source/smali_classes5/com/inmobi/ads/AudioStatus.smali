.class public final enum Lcom/inmobi/ads/AudioStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/AudioStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/inmobi/ads/AudioStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/inmobi/ads/AudioStatus;

.field public static final enum COMPLETED:Lcom/inmobi/ads/AudioStatus;

.field public static final Companion:Lcom/inmobi/ads/AudioStatus$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum PAUSED:Lcom/inmobi/ads/AudioStatus;

.field public static final enum PLAYING:Lcom/inmobi/ads/AudioStatus;


# direct methods
.method private static final synthetic $values()[Lcom/inmobi/ads/AudioStatus;
    .locals 3

    .line 1
    sget-object v0, Lcom/inmobi/ads/AudioStatus;->PLAYING:Lcom/inmobi/ads/AudioStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/inmobi/ads/AudioStatus;->PAUSED:Lcom/inmobi/ads/AudioStatus;

    .line 4
    .line 5
    sget-object v2, Lcom/inmobi/ads/AudioStatus;->COMPLETED:Lcom/inmobi/ads/AudioStatus;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/inmobi/ads/AudioStatus;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/inmobi/ads/AudioStatus;

    .line 2
    .line 3
    const-string v1, "PLAYING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/AudioStatus;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/inmobi/ads/AudioStatus;->PLAYING:Lcom/inmobi/ads/AudioStatus;

    .line 10
    .line 11
    new-instance v0, Lcom/inmobi/ads/AudioStatus;

    .line 12
    .line 13
    const-string v1, "PAUSED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/AudioStatus;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/inmobi/ads/AudioStatus;->PAUSED:Lcom/inmobi/ads/AudioStatus;

    .line 20
    .line 21
    new-instance v0, Lcom/inmobi/ads/AudioStatus;

    .line 22
    .line 23
    const-string v1, "COMPLETED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/AudioStatus;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/inmobi/ads/AudioStatus;->COMPLETED:Lcom/inmobi/ads/AudioStatus;

    .line 30
    .line 31
    invoke-static {}, Lcom/inmobi/ads/AudioStatus;->$values()[Lcom/inmobi/ads/AudioStatus;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/inmobi/ads/AudioStatus;->$VALUES:[Lcom/inmobi/ads/AudioStatus;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/inmobi/ads/AudioStatus;->$ENTRIES:Lss/a;

    .line 42
    .line 43
    new-instance v0, Lcom/inmobi/ads/AudioStatus$Companion;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1}, Lcom/inmobi/ads/AudioStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/inmobi/ads/AudioStatus;->Companion:Lcom/inmobi/ads/AudioStatus$Companion;

    .line 50
    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static from(I)Lcom/inmobi/ads/AudioStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/ads/AudioStatus;->Companion:Lcom/inmobi/ads/AudioStatus$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/inmobi/ads/AudioStatus$Companion;->from(I)Lcom/inmobi/ads/AudioStatus;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getEntries()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/inmobi/ads/AudioStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/ads/AudioStatus;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static to(Lcom/inmobi/ads/AudioStatus;)I
    .locals 1
    .param p0    # Lcom/inmobi/ads/AudioStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/inmobi/ads/AudioStatus;->Companion:Lcom/inmobi/ads/AudioStatus$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/inmobi/ads/AudioStatus$Companion;->to(Lcom/inmobi/ads/AudioStatus;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/AudioStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/inmobi/ads/AudioStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/inmobi/ads/AudioStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/inmobi/ads/AudioStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/ads/AudioStatus;->$VALUES:[Lcom/inmobi/ads/AudioStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/inmobi/ads/AudioStatus;

    .line 8
    .line 9
    return-object v0
.end method
