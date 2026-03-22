.class public final enum Landroidx/compose/material/BackdropValue;
.super Ljava/lang/Enum;
.source "BackdropScaffold.kt"


# annotations
.annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/material/BackdropValue;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/material/BackdropValue;

.field public static final enum Concealed:Landroidx/compose/material/BackdropValue;

.field public static final enum Revealed:Landroidx/compose/material/BackdropValue;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/material/BackdropValue;
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/material/BackdropValue;->Concealed:Landroidx/compose/material/BackdropValue;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/material/BackdropValue;->Revealed:Landroidx/compose/material/BackdropValue;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Landroidx/compose/material/BackdropValue;

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
    new-instance v0, Landroidx/compose/material/BackdropValue;

    .line 2
    .line 3
    const-string v1, "Concealed"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/compose/material/BackdropValue;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/compose/material/BackdropValue;->Concealed:Landroidx/compose/material/BackdropValue;

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/material/BackdropValue;

    .line 12
    .line 13
    const-string v1, "Revealed"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Landroidx/compose/material/BackdropValue;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroidx/compose/material/BackdropValue;->Revealed:Landroidx/compose/material/BackdropValue;

    .line 20
    .line 21
    invoke-static {}, Landroidx/compose/material/BackdropValue;->$values()[Landroidx/compose/material/BackdropValue;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Landroidx/compose/material/BackdropValue;->$VALUES:[Landroidx/compose/material/BackdropValue;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material/BackdropValue;
    .locals 1

    .line 1
    const-class v0, Landroidx/compose/material/BackdropValue;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/material/BackdropValue;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/compose/material/BackdropValue;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/BackdropValue;->$VALUES:[Landroidx/compose/material/BackdropValue;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/compose/material/BackdropValue;

    .line 8
    .line 9
    return-object v0
.end method
