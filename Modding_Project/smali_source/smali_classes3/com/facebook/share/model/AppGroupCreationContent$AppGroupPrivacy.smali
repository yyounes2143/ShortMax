.class public final enum Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
.super Ljava/lang/Enum;
.source "AppGroupCreationContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppGroupCreationContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppGroupPrivacy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

.field public static final enum Closed:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

.field public static final enum Open:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;


# direct methods
.method private static final synthetic $values()[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Open:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 2
    .line 3
    sget-object v1, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Closed:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 2
    .line 3
    const-string v1, "Open"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Open:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 10
    .line 11
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 12
    .line 13
    const-string v1, "Closed"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Closed:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 20
    .line 21
    invoke-static {}, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->$values()[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->$VALUES:[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 26
    .line 27
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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->$VALUES:[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 8
    .line 9
    return-object v0
.end method
