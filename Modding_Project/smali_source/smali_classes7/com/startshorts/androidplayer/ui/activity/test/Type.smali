.class public final enum Lcom/startshorts/androidplayer/ui/activity/test/Type;
.super Ljava/lang/Enum;
.source "TestRepository.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startshorts/androidplayer/ui/activity/test/Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/startshorts/androidplayer/ui/activity/test/Type;

.field public static final enum TEXT_TYPE:Lcom/startshorts/androidplayer/ui/activity/test/Type;


# direct methods
.method private static final synthetic $values()[Lcom/startshorts/androidplayer/ui/activity/test/Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/test/Type;->TEXT_TYPE:Lcom/startshorts/androidplayer/ui/activity/test/Type;

    .line 2
    .line 3
    filled-new-array {v0}, [Lcom/startshorts/androidplayer/ui/activity/test/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/test/Type;

    .line 2
    .line 3
    const-string v1, "TEXT_TYPE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/activity/test/Type;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/test/Type;->TEXT_TYPE:Lcom/startshorts/androidplayer/ui/activity/test/Type;

    .line 10
    .line 11
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/test/Type;->$values()[Lcom/startshorts/androidplayer/ui/activity/test/Type;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/test/Type;->$VALUES:[Lcom/startshorts/androidplayer/ui/activity/test/Type;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/test/Type;->$ENTRIES:Lss/a;

    .line 22
    .line 23
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

.method public static getEntries()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/startshorts/androidplayer/ui/activity/test/Type;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/test/Type;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startshorts/androidplayer/ui/activity/test/Type;
    .locals 1

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/ui/activity/test/Type;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/ui/activity/test/Type;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/startshorts/androidplayer/ui/activity/test/Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/test/Type;->$VALUES:[Lcom/startshorts/androidplayer/ui/activity/test/Type;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/startshorts/androidplayer/ui/activity/test/Type;

    .line 8
    .line 9
    return-object v0
.end method
