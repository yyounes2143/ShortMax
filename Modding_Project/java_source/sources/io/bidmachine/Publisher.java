package io.bidmachine;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.adcom.Context;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes7.dex */
public class Publisher {
    private final List<String> categories;
    private final String domain;

    /* renamed from: id  reason: collision with root package name */
    private final String f53588id;
    private final String name;

    /* loaded from: classes7.dex */
    public static final class Builder {
        private List<String> categories;
        private String domain;

        /* renamed from: id  reason: collision with root package name */
        private String f53589id;
        private String name;

        public Builder addCategories(@Nullable List<String> list) {
            if (io.bidmachine.core.g.I(list)) {
                return this;
            }
            for (String str : list) {
                addCategory(str);
            }
            return this;
        }

        public Builder addCategory(@Nullable String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            if (this.categories == null) {
                this.categories = new ArrayList();
            }
            this.categories.add(str);
            return this;
        }

        public Publisher build() {
            return new Publisher(this.f53589id, this.name, this.domain, this.categories);
        }

        public Builder setDomain(@Nullable String str) {
            this.domain = str;
            return this;
        }

        public Builder setId(@Nullable String str) {
            this.f53589id = str;
            return this;
        }

        public Builder setName(@Nullable String str) {
            this.name = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void build(@NonNull Context.App.Builder builder) {
        Context.App.Publisher.Builder newBuilder = Context.App.Publisher.newBuilder();
        String str = this.f53588id;
        if (str != null) {
            newBuilder.setId(str);
        }
        String str2 = this.name;
        if (str2 != null) {
            newBuilder.setName(str2);
        }
        String str3 = this.domain;
        if (str3 != null) {
            newBuilder.setDomain(str3);
        }
        List<String> list = this.categories;
        if (list != null) {
            newBuilder.addAllCat(list);
        }
        builder.setPub(newBuilder.build());
    }

    private Publisher(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable List<String> list) {
        this.f53588id = str;
        this.name = str2;
        this.domain = str3;
        this.categories = list;
    }
}
