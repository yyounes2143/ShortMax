.class public final Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;
.super Ljava/lang/Object;
.source "SearchActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/search/SearchModule;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->a:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->b:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/search/SearchModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->c(Landroid/view/View;Lcom/startshorts/androidplayer/bean/search/SearchModule;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "info"

    .line 4
    .line 5
    move-object/from16 v8, p1

    .line 6
    .line 7
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 11
    .line 12
    new-instance v11, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v7, "upack"

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v11, v7, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    const/4 v14, 0x4

    .line 39
    const/4 v15, 0x0

    .line 40
    const-string v10, "search_all_click"

    .line 41
    .line 42
    const-wide/16 v12, 0x0

    .line 43
    .line 44
    move-object v9, v1

    .line 45
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->a:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 49
    .line 50
    const/4 v6, 0x4

    .line 51
    const/4 v9, 0x0

    .line 52
    const-string v4, "all_search"

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    move-object/from16 v3, p1

    .line 56
    .line 57
    move-object v10, v7

    .line 58
    move-object v7, v9

    .line 59
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->O1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->a:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 63
    .line 64
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->f1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    instance-of v2, v2, Lcom/startshorts/androidplayer/viewmodel/search/d$b;

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    new-instance v4, Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->b:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 86
    .line 87
    const-string v3, "type"

    .line 88
    .line 89
    const-string v5, "no_result"

    .line 90
    .line 91
    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v3, "reel_id"

    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayCode()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->X()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_1

    .line 112
    .line 113
    const-string v3, "query"

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->X()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v4, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_2

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v4, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    const/4 v7, 0x4

    .line 140
    const/4 v8, 0x0

    .line 141
    const-string v3, "search_result_click"

    .line 142
    .line 143
    const-wide/16 v5, 0x0

    .line 144
    .line 145
    move-object v2, v1

    .line 146
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    return-void
.end method

.method public c(Landroid/view/View;Lcom/startshorts/androidplayer/bean/search/SearchModule;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "v"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "d"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    check-cast v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->b(Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    check-cast v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->b(Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_1
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;

    .line 48
    .line 49
    const-string v3, "upack"

    .line 50
    .line 51
    const-string v4, "type"

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 56
    .line 57
    new-instance v7, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->b:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 63
    .line 64
    const-string v6, "have_result"

    .line 65
    .line 66
    invoke-virtual {v7, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    check-cast v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayCode()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v6, "reel_id"

    .line 80
    .line 81
    invoke-virtual {v7, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->X()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_2

    .line 93
    .line 94
    const-string v4, "query"

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->X()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v7, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_3

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v7, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    const/4 v10, 0x4

    .line 131
    const/4 v11, 0x0

    .line 132
    const-string v6, "search_result_click"

    .line 133
    .line 134
    const-wide/16 v8, 0x0

    .line 135
    .line 136
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object v12, v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->a:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    const/16 v16, 0x4

    .line 146
    .line 147
    const/16 v17, 0x0

    .line 148
    .line 149
    const-string v14, "search_result"

    .line 150
    .line 151
    const/4 v15, 0x0

    .line 152
    invoke-static/range {v12 .. v17}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->O1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_4
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;

    .line 157
    .line 158
    if-eqz v2, :cond_6

    .line 159
    .line 160
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 161
    .line 162
    const/4 v10, 0x6

    .line 163
    const/4 v11, 0x0

    .line 164
    const-string v6, "fuzzy_search_click"

    .line 165
    .line 166
    const/4 v7, 0x0

    .line 167
    const-wide/16 v8, 0x0

    .line 168
    .line 169
    move-object v5, v2

    .line 170
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    new-instance v7, Landroid/os/Bundle;

    .line 174
    .line 175
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v5, "input"

    .line 179
    .line 180
    invoke-virtual {v7, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    check-cast v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    const-string v5, "content"

    .line 194
    .line 195
    invoke-virtual {v7, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-nez v4, :cond_5

    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_5
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 224
    .line 225
    const/4 v10, 0x4

    .line 226
    const/4 v11, 0x0

    .line 227
    const-string v6, "search_page_click"

    .line 228
    .line 229
    const-wide/16 v8, 0x0

    .line 230
    .line 231
    move-object v5, v2

    .line 232
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iget-object v12, v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->a:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 236
    .line 237
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    const/16 v16, 0x4

    .line 242
    .line 243
    const/16 v17, 0x0

    .line 244
    .line 245
    const-string v14, "realtime_search"

    .line 246
    .line 247
    const/4 v15, 0x0

    .line 248
    invoke-static/range {v12 .. v17}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->O1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_6
    instance-of v1, v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$NetworkErrorModule;

    .line 253
    .line 254
    if-eqz v1, :cond_7

    .line 255
    .line 256
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;->a:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 257
    .line 258
    const/4 v2, 0x0

    .line 259
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->g1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Z)V

    .line 260
    .line 261
    .line 262
    :cond_7
    :goto_0
    return-void
.end method
