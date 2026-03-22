package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class FilterWord {
    private String ZYk;
    private List<FilterWord> ex;
    private String oJ;
    private boolean tB;

    public FilterWord(String str, String str2) {
        this.oJ = str;
        this.ZYk = str2;
    }

    public void addOption(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        if (this.ex == null) {
            this.ex = new ArrayList();
        }
        this.ex.add(filterWord);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof FilterWord) {
            FilterWord filterWord = (FilterWord) obj;
            if (filterWord.getId().equals(getId()) && filterWord.getName().equals(getName())) {
                return true;
            }
            return false;
        }
        return false;
    }

    public String getId() {
        return this.oJ;
    }

    public boolean getIsSelected() {
        return this.tB;
    }

    public String getName() {
        return this.ZYk;
    }

    public List<FilterWord> getOptions() {
        return this.ex;
    }

    public boolean hasSecondOptions() {
        List<FilterWord> list = this.ex;
        if (list != null && !list.isEmpty()) {
            return true;
        }
        return false;
    }

    public boolean isValid() {
        if (!TextUtils.isEmpty(this.oJ) && !TextUtils.isEmpty(this.ZYk)) {
            return true;
        }
        return false;
    }

    public void setId(String str) {
        this.oJ = str;
    }

    public void setIsSelected(boolean z10) {
        this.tB = z10;
    }

    public void setName(String str) {
        this.ZYk = str;
    }

    public FilterWord() {
    }
}
