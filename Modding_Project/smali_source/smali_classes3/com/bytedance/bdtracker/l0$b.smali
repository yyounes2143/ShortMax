.class public Lcom/bytedance/bdtracker/l0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bdtracker/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    return-object v1

    :cond_1
    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public static a(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)Lcom/bytedance/bdtracker/l0;
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/bdtracker/l0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/bdtracker/l0;-><init>(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;Lcom/bytedance/bdtracker/l0$a;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;Z)Lcom/bytedance/bdtracker/w3;
    .locals 35

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/bytedance/bdtracker/d5;->a(Landroid/view/View;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/bytedance/bdtracker/d5;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/bytedance/bdtracker/d5;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v3

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {}, Lcom/bytedance/bdtracker/e5;->a()V

    .line 28
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v8, :cond_4

    goto :goto_2

    :cond_4
    const/16 v7, 0x63

    if-ge v6, v7, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v9, Lcom/bytedance/bdtracker/e5;->c:Ljava/lang/Class;

    if-ne v7, v9, :cond_5

    const-string v6, "/DialogWindow"

    goto :goto_5

    :cond_5
    const/16 v7, 0x7cf

    if-ge v6, v7, :cond_6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v9, Lcom/bytedance/bdtracker/e5;->d:Ljava/lang/Class;

    if-ne v7, v9, :cond_6

    goto :goto_3

    :cond_6
    const/16 v7, 0xbb7

    if-ge v6, v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lcom/bytedance/bdtracker/e5;->c:Ljava/lang/Class;

    if-ne v6, v7, :cond_8

    :goto_2
    const-string v6, "/MainWindow"

    goto :goto_5

    :cond_8
    sget-object v7, Lcom/bytedance/bdtracker/e5;->d:Ljava/lang/Class;

    if-ne v6, v7, :cond_9

    :goto_3
    const-string v6, "/PopupWindow"

    goto :goto_5

    :cond_9
    :goto_4
    const-string v6, "/CustomWindow"

    .line 29
    :goto_5
    invoke-static {v5}, Lcom/bytedance/bdtracker/e5;->a(Landroid/view/View;)Z

    move-result v7

    const v9, 0x5042b0a

    const-string v10, "#"

    const-string v11, "/"

    const/4 v12, 0x0

    if-nez v7, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-nez v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/bdtracker/d5;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v12}, Lcom/bytedance/bdtracker/d5;->a(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v5, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_a

    move v13, v8

    goto :goto_6

    :cond_a
    move v13, v12

    :goto_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_b
    move v13, v12

    :goto_7
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_26

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v7, 0x2

    sub-int/2addr v0, v7

    move-object/from16 v16, v3

    move-object/from16 v17, v16

    move-object v15, v6

    move v3, v13

    move-object v13, v15

    move-object v6, v5

    move v5, v0

    :goto_8
    if-ltz v5, :cond_24

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    sget v0, Lcom/bytedance/applog/R$id;->applog_tag_view_name:I

    invoke-virtual {v8, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    move-object/from16 v21, v4

    move-object v15, v6

    move v4, v9

    goto/16 :goto_14

    :cond_c
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/bdtracker/d5;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v18

    .line 30
    sget-boolean v0, Lcom/bytedance/bdtracker/k4;->i:Z

    if-eqz v0, :cond_d

    instance-of v0, v6, Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_d

    goto :goto_9

    .line 31
    :cond_d
    invoke-static {v6}, Lcom/bytedance/bdtracker/k4;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    :goto_9
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "getCurrentItem"

    :try_start_1
    new-array v7, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v7, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    :goto_a
    move/from16 v0, v18

    goto/16 :goto_c

    :catchall_0
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v18

    goto :goto_a

    .line 33
    :cond_f
    instance-of v0, v6, Landroid/widget/AdapterView;

    if-eqz v0, :cond_10

    move-object v0, v6

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    add-int v18, v0, v18

    goto :goto_a

    .line 34
    :cond_10
    invoke-static {v6}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v6}, Lcom/bytedance/bdtracker/k4;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/bytedance/bdtracker/k4;->a:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/bytedance/bdtracker/k4;->b:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 35
    :cond_11
    invoke-static {v6}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v6

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_b

    :cond_12
    invoke-static {v6}, Lcom/bytedance/bdtracker/k4;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v7, "getChildAdapterPosition"

    :try_start_3
    new-array v14, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v7, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_b

    :catchall_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string v7, "getChildPosition"

    :try_start_5
    new-array v14, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v7, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_b

    :cond_13
    sget-boolean v0, Lcom/bytedance/bdtracker/k4;->a:Z

    if-eqz v0, :cond_14

    .line 36
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v7, Lcom/bytedance/bdtracker/k4;->b:Ljava/lang/Class;

    if-ne v0, v7, :cond_14

    sget-object v0, Lcom/bytedance/bdtracker/k4;->c:Ljava/lang/reflect/Method;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v7

    new-array v14, v12, [Ljava/lang/Object;

    const-string v12, "invokeCRVGetChildAdapterPositionMethod failed"

    invoke-interface {v7, v12, v0, v14}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :catchall_3
    :cond_14
    const/4 v0, -0x1

    :goto_b
    if-ltz v0, :cond_e

    .line 37
    :goto_c
    instance-of v7, v6, Landroid/widget/ExpandableListView;

    const-string v14, "[0]"

    if-eqz v7, :cond_1a

    check-cast v6, Landroid/widget/ExpandableListView;

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v7

    const-string v12, "]/"

    move-object/from16 v21, v4

    const/4 v4, 0x2

    if-ne v7, v4, :cond_16

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    if-ge v0, v7, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/ELH["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    :goto_d
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    :cond_15
    invoke-virtual {v6}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    invoke-virtual {v6}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v6

    sub-int/2addr v7, v6

    sub-int/2addr v0, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/ELF["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_d

    :cond_16
    invoke-static/range {v19 .. v20}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    invoke-static/range {v19 .. v20}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    const-string v7, "/ELVG["

    const/4 v4, -0x1

    if-eq v6, v4, :cond_18

    if-nez v17, :cond_17

    new-instance v4, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_e

    :cond_17
    move-object/from16 v4, v17

    :goto_e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/ELVG[-]/ELVC[-]/"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]/ELVC["

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v1

    move-object/from16 v17, v4

    goto/16 :goto_13

    :cond_18
    if-nez v17, :cond_19

    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_f

    :cond_19
    move-object/from16 v1, v17

    :goto_f
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/ELVG[-]/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v1

    move-object v0, v4

    goto/16 :goto_13

    :cond_1a
    move-object/from16 v21, v4

    .line 38
    instance-of v1, v6, Landroid/widget/AdapterView;

    const-string v4, "]"

    const-string v7, "["

    if-nez v1, :cond_1f

    invoke-static {v6}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 39
    sget-boolean v1, Lcom/bytedance/bdtracker/k4;->i:Z

    if-eqz v1, :cond_1b

    instance-of v1, v6, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1b

    goto/16 :goto_11

    .line 40
    :cond_1b
    invoke-static {v6}, Lcom/bytedance/bdtracker/k4;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {v6}, Lcom/bytedance/bdtracker/k4;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto/16 :goto_11

    .line 41
    :cond_1c
    sget-boolean v1, Lcom/bytedance/bdtracker/k4;->j:Z

    if-eqz v1, :cond_1d

    instance-of v1, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v1, :cond_1d

    goto :goto_10

    .line 42
    :cond_1d
    sget-boolean v1, Lcom/bytedance/bdtracker/k4;->g:Z

    if-eqz v1, :cond_1e

    const-string v1, "android.support.v4.widget.SwipeRefreshLayout"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 43
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_1f
    :goto_11
    const v1, 0x5042b0f

    .line 44
    invoke-virtual {v6, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Ljava/util/List;

    if-eqz v6, :cond_20

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_20

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v0, v6

    .line 46
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/bdtracker/d5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_20
    if-nez v17, :cond_21

    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_12

    :cond_21
    move-object/from16 v1, v17

    :goto_12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "[-]"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v1

    move-object/from16 v34, v6

    move-object v6, v0

    move-object/from16 v0, v34

    .line 47
    :goto_13
    invoke-static {v8, v3}, Lcom/bytedance/bdtracker/d5;->a(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v1

    const v4, 0x5042b0a

    if-eqz v1, :cond_23

    invoke-virtual {v8, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_22

    const/4 v3, 0x1

    :cond_22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    move-object v13, v0

    move-object v15, v6

    :goto_14
    instance-of v0, v8, Landroid/view/ViewGroup;

    if-nez v0, :cond_25

    :cond_24
    move-object/from16 v25, v13

    move-object/from16 v1, v16

    move-object/from16 v33, v17

    goto :goto_15

    :cond_25
    move-object v6, v8

    check-cast v6, Landroid/view/ViewGroup;

    add-int/lit8 v5, v5, -0x1

    move v9, v4

    move-object/from16 v4, v21

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v12, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_8

    :cond_26
    move-object/from16 v25, v6

    const/4 v1, 0x0

    const/16 v33, 0x0

    :goto_15
    invoke-static/range {p0 .. p0}, Lcom/bytedance/bdtracker/d5;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/bytedance/bdtracker/d5;->a(Landroid/content/Context;I)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_2e

    .line 48
    sget-object v0, Lcom/bytedance/bdtracker/w;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    :cond_27
    const/4 v3, 0x0

    goto :goto_18

    :cond_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_16
    if-ltz v0, :cond_27

    sget-object v3, Lcom/bytedance/bdtracker/w;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_29

    goto :goto_17

    :cond_29
    invoke-static {v3}, Lcom/bytedance/bdtracker/v4;->a(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2a

    goto :goto_18

    :cond_2a
    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :goto_18
    if-eqz v3, :cond_2b

    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/bytedance/bdtracker/v4;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_2b
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 51
    :cond_2c
    invoke-static {}, Lcom/bytedance/bdtracker/w;->a()Lcom/bytedance/bdtracker/e4;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, v0, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    goto :goto_19

    :cond_2d
    move-object v0, v4

    .line 52
    :goto_19
    invoke-static {v2}, Lcom/bytedance/bdtracker/v4;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1a
    move-object/from16 v23, v0

    move-object/from16 v24, v2

    goto :goto_1d

    .line 53
    :cond_2e
    sget-object v3, Lcom/bytedance/bdtracker/w;->j:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_1b

    :cond_2f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/e4;

    iget-object v0, v0, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    goto :goto_1c

    :cond_30
    :goto_1b
    move-object v0, v4

    .line 54
    :goto_1c
    invoke-static {v2}, Lcom/bytedance/bdtracker/v4;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v29

    new-instance v2, Lcom/bytedance/bdtracker/w3;

    .line 55
    sget v0, Lcom/bytedance/applog/R$id;->applog_tag_view_id:I

    move-object/from16 v3, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_31

    :goto_1e
    move-object/from16 v26, v0

    goto :goto_1f

    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_32

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_1e

    :catchall_4
    move-exception v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v5

    const-string v6, "WidgetUtils"

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Get view id failed"

    invoke-interface {v5, v6, v8, v0, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :catch_0
    :cond_32
    move-object/from16 v26, v4

    .line 56
    :goto_1f
    invoke-static/range {p0 .. p0}, Lcom/bytedance/bdtracker/l0$b;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v27

    div-int/lit8 v30, v28, 0x2

    div-int/lit8 v31, v29, 0x2

    invoke-static {v3, v1}, Lcom/bytedance/bdtracker/d5;->a(Landroid/view/View;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v32

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v33}, Lcom/bytedance/bdtracker/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 4
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 0

    .line 5
    if-eqz p0, :cond_0

    const-string p0, "yes"

    return-object p0

    :cond_0
    const-string p0, "no"

    return-object p0
.end method

.method public static a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/bdtracker/o2;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    const-string v0, "metrics_category"

    const-string v1, "metrics_name"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .line 7
    const-string v0, "oaid"

    if-eqz p0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, p0}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/bdtracker/h5;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "transferHeaderOaid error"

    invoke-interface {v0, v3, p0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "copy json error"

    invoke-interface {v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/database/Cursor;)V
    .locals 3

    .line 9
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "closeSafely error"

    invoke-interface {v0, v2, p0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 10
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "endDbTransactionSafely error"

    invoke-interface {v0, v2, p0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final a(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$disableViewExposureDebugMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroid/widget/ImageView;

    const-string v1, "null cannot be cast to non-null type com.bytedance.applog.exposure.DebugDrawable"

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/bytedance/bdtracker/o0;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lcom/bytedance/bdtracker/o0;

    .line 23
    iget-object v2, v2, Lcom/bytedance/bdtracker/p0;->a:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/bdtracker/o0;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/bytedance/bdtracker/o0;

    .line 25
    iget-object v0, v0, Lcom/bytedance/bdtracker/p0;->a:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/bytedance/bdtracker/z2;Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "params"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 3

    .line 11
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "closeSafely error"

    invoke-interface {v0, v2, p0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 12
    if-nez p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0, p1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/json/JSONObject;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1, p2}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    instance-of p2, p0, Lorg/json/JSONArray;

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    check-cast p0, Lorg/json/JSONArray;

    check-cast p1, Lorg/json/JSONArray;

    .line 20
    invoke-static {p0, p1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_6

    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    invoke-virtual {p0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eq p1, v2, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_6

    :cond_9
    move v1, v0

    :goto_6
    return v1

    .line 21
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq p2, v2, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    move v1, v0

    :cond_c
    return v1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    .line 13
    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/bytedance/bdtracker/l0$b;->a(ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 4

    .line 14
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "unknown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 3

    .line 17
    invoke-static {p0, p1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eq p2, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    return v0
.end method

.method public static a(Lorg/json/JSONObject;[Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 5
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/json/JSONArray;

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz p2, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/bytedance/bdtracker/l0$b;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/bytedance/bdtracker/l0$b;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static a(ZLjava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[Assert failed] {}"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->ast(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 19
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/bytedance/bdtracker/l0$b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cmdline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "iso-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    if-lez v3, :cond_1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-object v1, v0

    goto :goto_1

    .line 6
    :goto_2
    sput-object v0, Lcom/bytedance/bdtracker/l0$b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const-string v1, "getProcessName: "

    invoke-static {v1}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bytedance/bdtracker/l0$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/bytedance/bdtracker/l0$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bytedance/bdtracker/l0$b;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .line 3
    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const-string v1, "JsonUtils"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Merge json interrupted."

    invoke-interface {v0, v1, v3, p0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method public static final b(Landroid/view/View;Z)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$setViewExposureVisible"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/high16 p1, -0x10000

    goto :goto_0

    :cond_0
    const/16 p1, -0x100

    :goto_0
    instance-of v0, p0, Landroid/widget/ImageView;

    const-string v1, "null cannot be cast to non-null type com.bytedance.applog.exposure.DebugDrawable"

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/bytedance/bdtracker/o0;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/bytedance/bdtracker/o0;

    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/o0;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/bdtracker/o0;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/bytedance/bdtracker/o0;

    .line 9
    iget-object v0, v0, Lcom/bytedance/bdtracker/o0;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 10
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 4
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lcom/bytedance/bdtracker/l0$b;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static c(Landroid/view/View;)Ljava/lang/String;
    .locals 8

    const-string v0, "WidgetUtils"

    const-string v1, ""

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, p0, Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    const-string p0, "CheckBox"

    return-object p0

    :cond_1
    instance-of v2, p0, Landroid/widget/RadioButton;

    if-eqz v2, :cond_2

    const-string p0, "RadioButton"

    return-object p0

    :cond_2
    instance-of v2, p0, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    const-string p0, "ToggleButton"

    return-object p0

    :cond_3
    instance-of v2, p0, Landroid/widget/CompoundButton;

    if-eqz v2, :cond_6

    .line 3
    const-string v0, "android.widget.Switch"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "Switch"

    goto :goto_0

    :cond_4
    const-string v0, "android.support.v7.widget.SwitchCompat"

    const-string v2, "androidx.appcompat.widget.SwitchCompat"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string v1, "SwitchCompat"

    :cond_5
    :goto_0
    return-object v1

    .line 4
    :cond_6
    instance-of v2, p0, Landroid/widget/Button;

    if-eqz v2, :cond_7

    const-string p0, "Button"

    return-object p0

    :cond_7
    instance-of v2, p0, Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_8

    const-string p0, "CheckedTextView"

    return-object p0

    :cond_8
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_9

    const-string p0, "TextView"

    return-object p0

    :cond_9
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    const-string p0, "ImageView"

    return-object p0

    :cond_a
    instance-of v2, p0, Landroid/widget/RatingBar;

    if-eqz v2, :cond_b

    const-string p0, "RatingBar"

    return-object p0

    :cond_b
    instance-of v2, p0, Landroid/widget/SeekBar;

    if-eqz v2, :cond_c

    const-string p0, "SeekBar"

    return-object p0

    :cond_c
    instance-of v2, p0, Landroid/widget/Spinner;

    if-eqz v2, :cond_d

    const-string p0, "Spinner"

    return-object p0

    :cond_d
    const/4 v2, 0x0

    .line 5
    :try_start_0
    const-string v3, "android.support.design.widget.TabLayout$TabView"

    const-string v4, "com.google.android.material.tabs.TabLayout$TabView"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->a([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_e

    const-string p0, "TabLayout"

    return-object p0

    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "Check isTabView failed"

    invoke-interface {v4, v5, v7, v3, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 6
    :cond_e
    const-string v3, "android.support.design.widget.NavigationView"

    const-string v4, "com.google.android.material.navigation.NavigationView"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v5

    const-string v6, "NavigationView"

    if-eqz v5, :cond_f

    return-object v6

    :cond_f
    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_11

    const-string v5, "android.support.v7.widget.CardView"

    const-string v7, "androidx.cardview.widget.CardView"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string p0, "CardView"

    return-object p0

    :cond_10
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    return-object v6

    :cond_11
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "getCanonicalName failed"

    invoke-interface {v3, v0, v4, p0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/bdtracker/o2;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/view/View;)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .line 2
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/bdtracker/e5;->a(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-lez v1, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_4

    move v0, v2

    :cond_4
    :goto_0
    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 0

    .line 3
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/bytedance/bdtracker/l0$b;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 5

    .line 2
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0xd

    if-lt v1, v2, :cond_8

    const/16 v2, 0x80

    if-le v1, v2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-le v3, v4, :cond_5

    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-le v3, v4, :cond_5

    :cond_4
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_2
    return v0
.end method
