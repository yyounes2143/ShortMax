package com.huawei.hms.support.hwid.request;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hms.support.api.entity.auth.PermissionInfo;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.feature.request.AbstractAuthParams;
import java.util.ArrayList;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class HuaweiIdAuthParams extends AbstractAuthParams implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private String f22296a;
    public static final HuaweiIdAuthParams DEFAULT_AUTH_REQUEST_PARAM = new HuaweiIdAuthParamsHelper().setId().setProfile().createParams();
    public static final HuaweiIdAuthParams DEFAULT_AUTH_REQUEST_PARAM_GAME = new HuaweiIdAuthParamsHelper().setScope(AbstractAuthParams.SCOPE_GAMES).createParams();
    public static final Parcelable.Creator<HuaweiIdAuthParams> CREATOR = new Parcelable.Creator<HuaweiIdAuthParams>() { // from class: com.huawei.hms.support.hwid.request.HuaweiIdAuthParams.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public HuaweiIdAuthParams createFromParcel(Parcel parcel) {
            return new HuaweiIdAuthParams(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public HuaweiIdAuthParams[] newArray(int i10) {
            return new HuaweiIdAuthParams[i10];
        }
    };

    public static HuaweiIdAuthParams fromJson(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return fromJsonObject(new JSONObject(str));
    }

    public static HuaweiIdAuthParams fromJsonObject(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("scopeArrayList");
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                arrayList.add(AbstractAuthParams.jsonToScope(jSONArray.getJSONObject(i10)));
            }
        }
        JSONArray jSONArray2 = jSONObject.getJSONArray("permissionArrayList");
        ArrayList arrayList2 = new ArrayList();
        if (jSONArray2 != null) {
            for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                arrayList2.add(AbstractAuthParams.jsonToPermission(jSONArray2.getJSONObject(i11)));
            }
        }
        String optString = jSONObject.optString(CommonConstant.RequestParams.KEY_SIGN_IN_PARAMS);
        HuaweiIdAuthParams huaweiIdAuthParams = new HuaweiIdAuthParams(arrayList, arrayList2);
        huaweiIdAuthParams.setSignInParams(optString);
        return huaweiIdAuthParams;
    }

    @Override // com.huawei.hms.support.feature.request.AbstractAuthParams
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HuaweiIdAuthParams)) {
            return false;
        }
        HuaweiIdAuthParams huaweiIdAuthParams = (HuaweiIdAuthParams) obj;
        if (isListEquals(this.scopeArrayList, huaweiIdAuthParams.scopeArrayList) && isListEquals(this.permissionArrayList, huaweiIdAuthParams.permissionArrayList)) {
            return true;
        }
        return false;
    }

    @Override // com.huawei.hms.support.feature.request.AbstractAuthParams
    public int hashCode() {
        int hashCode;
        ArrayList<Scope> arrayList = this.scopeArrayList;
        int i10 = 0;
        if (arrayList == null) {
            hashCode = 0;
        } else {
            hashCode = arrayList.hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        ArrayList<PermissionInfo> arrayList2 = this.permissionArrayList;
        if (arrayList2 != null) {
            i10 = arrayList2.hashCode();
        }
        return i11 + i10;
    }

    public void setSignInParams(String str) {
        this.f22296a = str;
    }

    @Override // com.huawei.hms.support.feature.request.AbstractAuthParams
    public JSONObject toJsonObject() throws JSONException {
        JSONObject jsonObject = super.toJsonObject();
        jsonObject.put(CommonConstant.RequestParams.KEY_SIGN_IN_PARAMS, this.f22296a);
        return jsonObject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public HuaweiIdAuthParams(Set<Scope> set, Set<PermissionInfo> set2) {
        this(new ArrayList(set), new ArrayList(set2));
    }

    /* renamed from: clone */
    public HuaweiIdAuthParams m4702clone() throws CloneNotSupportedException {
        return (HuaweiIdAuthParams) super.clone();
    }

    protected HuaweiIdAuthParams(Set<Scope> set, Set<PermissionInfo> set2, String str) {
        this(new ArrayList(set), new ArrayList(set2));
        this.f22296a = str;
    }

    protected HuaweiIdAuthParams(ArrayList<Scope> arrayList, ArrayList<PermissionInfo> arrayList2) {
        super(arrayList, arrayList2);
        this.f22296a = "";
    }

    protected HuaweiIdAuthParams(ArrayList<Scope> arrayList, ArrayList<PermissionInfo> arrayList2, String str) {
        super(arrayList, arrayList2);
        this.f22296a = str;
    }

    private HuaweiIdAuthParams(Parcel parcel) {
        super(parcel.createTypedArrayList(Scope.CREATOR), parcel.createTypedArrayList(PermissionInfo.CREATOR));
        this.f22296a = "";
        this.f22296a = parcel.readString();
    }
}
