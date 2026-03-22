.class public final synthetic Lcom/drake/brv/DefaultDecoration$b;
.super Ljava/lang/Object;
.source "DefaultDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drake/brv/DefaultDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/drake/brv/annotaion/DividerOrientation;->values()[Lcom/drake/brv/annotaion/DividerOrientation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sget-object v1, Lcom/drake/brv/annotaion/DividerOrientation;->HORIZONTAL:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    aput v2, v0, v1

    .line 16
    .line 17
    sget-object v1, Lcom/drake/brv/annotaion/DividerOrientation;->VERTICAL:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x2

    .line 24
    aput v2, v0, v1

    .line 25
    .line 26
    sget-object v1, Lcom/drake/brv/annotaion/DividerOrientation;->GRID:Lcom/drake/brv/annotaion/DividerOrientation;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x3

    .line 33
    aput v2, v0, v1

    .line 34
    .line 35
    sput-object v0, Lcom/drake/brv/DefaultDecoration$b;->$EnumSwitchMapping$0:[I

    .line 36
    .line 37
    return-void
.end method
