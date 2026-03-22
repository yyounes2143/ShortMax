.class public final enum Landroidx/compose/ui/focus/FocusStateImpl;
.super Ljava/lang/Enum;
.source "FocusState.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/focus/FocusStateImpl;",
        ">;",
        "Landroidx/compose/ui/focus/FocusState;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum Active:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum Captured:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum Deactivated:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum DeactivatedParent:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum Inactive:Landroidx/compose/ui/focus/FocusStateImpl;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 6

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/focus/FocusStateImpl;->Deactivated:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 8
    .line 9
    sget-object v4, Landroidx/compose/ui/focus/FocusStateImpl;->DeactivatedParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 10
    .line 11
    sget-object v5, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Landroidx/compose/ui/focus/FocusStateImpl;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    const-string v1, "Active"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 12
    .line 13
    const-string v1, "ActiveParent"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 22
    .line 23
    const-string v1, "Captured"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 30
    .line 31
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 32
    .line 33
    const-string v1, "Deactivated"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Deactivated:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 40
    .line 41
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 42
    .line 43
    const-string v1, "DeactivatedParent"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->DeactivatedParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 50
    .line 51
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 52
    .line 53
    const-string v1, "Inactive"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 60
    .line 61
    invoke-static {}, Landroidx/compose/ui/focus/FocusStateImpl;->$values()[Landroidx/compose/ui/focus/FocusStateImpl;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->$VALUES:[Landroidx/compose/ui/focus/FocusStateImpl;

    .line 66
    .line 67
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

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 1

    .line 1
    const-class v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->$VALUES:[Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/compose/ui/focus/FocusStateImpl;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getHasFocus()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 13
    .line 14
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCaptured()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 13
    .line 14
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isDeactivated()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 13
    .line 14
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isFocused()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 13
    .line 14
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
