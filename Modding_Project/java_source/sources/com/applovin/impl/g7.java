package com.applovin.impl;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class g7 {

    /* renamed from: a  reason: collision with root package name */
    private final Intent f7968a = new Intent();

    public g7 a(String str, String str2) {
        boolean isValidString = StringUtils.isValidString(str);
        boolean isValidString2 = StringUtils.isValidString(str2);
        if (isValidString && isValidString2) {
            this.f7968a.setDataAndType(Uri.parse(str), str2);
        } else if (isValidString) {
            this.f7968a.setData(Uri.parse(str));
        } else if (isValidString2) {
            this.f7968a.setType(str2);
        }
        return this;
    }

    public g7 b(String str) {
        if (StringUtils.isValidString(str)) {
            this.f7968a.addFlags(Integer.parseInt(str));
        }
        return this;
    }

    public Intent c(String str) {
        Intent createChooser = Intent.createChooser(this.f7968a, StringUtils.emptyIfNull(str));
        createChooser.addFlags(this.f7968a.getFlags());
        return createChooser;
    }

    public g7 d(String str) {
        if (StringUtils.isValidString(str)) {
            this.f7968a.setAction(str);
        }
        return this;
    }

    public g7 e(String str) {
        if (StringUtils.isValidString(str)) {
            this.f7968a.putExtras(JsonUtils.toBundle(JsonUtils.jsonObjectFromJsonString(str, new JSONObject())));
        }
        return this;
    }

    public g7 f(String str) {
        if (StringUtils.isValidString(str) && o0.j()) {
            this.f7968a.setIdentifier(str);
        }
        return this;
    }

    public g7 g(String str) {
        if (StringUtils.isValidString(str)) {
            this.f7968a.setSelector(new Intent(str));
        }
        return this;
    }

    public g7 h(String str) {
        if (StringUtils.isValidString(str)) {
            String[] split = str.split(",");
            if (split.length == 4) {
                this.f7968a.setSourceBounds(new Rect(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), Integer.parseInt(split[3])));
            }
        }
        return this;
    }

    public g7 b(String str, String str2, String str3) {
        if (StringUtils.isValidString(str)) {
            ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
            if (unflattenFromString != null) {
                this.f7968a.setComponent(unflattenFromString);
            }
        } else if (StringUtils.isValidString(str2) && StringUtils.isValidString(str3)) {
            this.f7968a.setClassName(str3, str2);
        } else if (StringUtils.isValidString(str3)) {
            this.f7968a.setPackage(str3);
        }
        return this;
    }

    public g7 a(String str) {
        if (StringUtils.isValidString(str)) {
            for (String str2 : str.split(",")) {
                this.f7968a.addCategory(str2);
            }
        }
        return this;
    }

    public g7 a(String str, String str2, String str3) {
        ClipData newRawUri;
        if (StringUtils.isValidString(str)) {
            Uri parse = Uri.parse(str);
            if (StringUtils.isValidString(str2)) {
                newRawUri = new ClipData(new ClipDescription(StringUtils.emptyIfNull(str3), new String[]{str2}), new ClipData.Item(parse));
            } else {
                newRawUri = ClipData.newRawUri(StringUtils.emptyIfNull(str3), parse);
            }
            this.f7968a.setClipData(newRawUri);
        }
        return this;
    }

    public Intent a() {
        return this.f7968a;
    }
}
