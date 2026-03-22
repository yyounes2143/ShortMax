.class public final synthetic Lcom/google/android/material/color/utilities/t3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/google/android/material/color/utilities/MaterialDynamicColors;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/color/utilities/t3;->a:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/utilities/t3;->a:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->e1(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
