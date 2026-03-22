.class public final enum Lcom/inmobi/sdk/InMobiSdk$Education;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/sdk/InMobiSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Education"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/inmobi/sdk/InMobiSdk$Education;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/inmobi/sdk/InMobiSdk$Education;

.field public static final enum COLLEGE_OR_GRADUATE:Lcom/inmobi/sdk/InMobiSdk$Education;

.field public static final enum HIGH_SCHOOL_OR_LESS:Lcom/inmobi/sdk/InMobiSdk$Education;

.field public static final enum POST_GRADUATE_OR_ABOVE:Lcom/inmobi/sdk/InMobiSdk$Education;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/inmobi/sdk/InMobiSdk$Education;
    .locals 3

    .line 1
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Education;->HIGH_SCHOOL_OR_LESS:Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 2
    .line 3
    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$Education;->COLLEGE_OR_GRADUATE:Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 4
    .line 5
    sget-object v2, Lcom/inmobi/sdk/InMobiSdk$Education;->POST_GRADUATE_OR_ABOVE:Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "highschoolorless"

    .line 5
    .line 6
    const-string v3, "HIGH_SCHOOL_OR_LESS"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/sdk/InMobiSdk$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$Education;->HIGH_SCHOOL_OR_LESS:Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 12
    .line 13
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "collegeorgraduate"

    .line 17
    .line 18
    const-string v3, "COLLEGE_OR_GRADUATE"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/sdk/InMobiSdk$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$Education;->COLLEGE_OR_GRADUATE:Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 24
    .line 25
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "postgraduateorabove"

    .line 29
    .line 30
    const-string v3, "POST_GRADUATE_OR_ABOVE"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/sdk/InMobiSdk$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$Education;->POST_GRADUATE_OR_ABOVE:Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 36
    .line 37
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk$Education;->$values()[Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$Education;->$VALUES:[Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$Education;->$ENTRIES:Lss/a;

    .line 48
    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/inmobi/sdk/InMobiSdk$Education;->value:Ljava/lang/String;

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
            "Lcom/inmobi/sdk/InMobiSdk$Education;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Education;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$Education;
    .locals 1

    .line 1
    const-class v0, Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/inmobi/sdk/InMobiSdk$Education;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Education;->$VALUES:[Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/sdk/InMobiSdk$Education;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
