.class public final enum Lcom/inmobi/media/Ta;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/inmobi/media/Ta;

.field public static final enum c:Lcom/inmobi/media/Ta;

.field public static final synthetic d:[Lcom/inmobi/media/Ta;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/inmobi/media/Ta;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "HIGHEST"

    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v2}, Lcom/inmobi/media/Ta;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/inmobi/media/Ta;->b:Lcom/inmobi/media/Ta;

    .line 10
    .line 11
    new-instance v1, Lcom/inmobi/media/Ta;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const-string v3, "HIGH"

    .line 15
    .line 16
    invoke-direct {v1, v2, v2, v3}, Lcom/inmobi/media/Ta;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/inmobi/media/Ta;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    const-string v4, "MEDIUM"

    .line 23
    .line 24
    invoke-direct {v2, v3, v3, v4}, Lcom/inmobi/media/Ta;-><init>(IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lcom/inmobi/media/Ta;->c:Lcom/inmobi/media/Ta;

    .line 28
    .line 29
    new-instance v3, Lcom/inmobi/media/Ta;

    .line 30
    .line 31
    const/4 v4, 0x3

    .line 32
    const-string v5, "LOW"

    .line 33
    .line 34
    invoke-direct {v3, v4, v4, v5}, Lcom/inmobi/media/Ta;-><init>(IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lcom/inmobi/media/Ta;

    .line 38
    .line 39
    const/4 v5, 0x4

    .line 40
    const-string v6, "LOWEST"

    .line 41
    .line 42
    invoke-direct {v4, v5, v5, v6}, Lcom/inmobi/media/Ta;-><init>(IILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/inmobi/media/Ta;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/inmobi/media/Ta;->d:[Lcom/inmobi/media/Ta;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/inmobi/media/Ta;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/media/Ta;
    .locals 1

    .line 1
    const-class v0, Lcom/inmobi/media/Ta;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/inmobi/media/Ta;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/inmobi/media/Ta;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/Ta;->d:[Lcom/inmobi/media/Ta;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/inmobi/media/Ta;

    .line 8
    .line 9
    return-object v0
.end method
