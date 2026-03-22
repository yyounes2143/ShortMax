package io.bidmachine;

import android.location.Location;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.protobuf.sdk.App;
import io.bidmachine.utils.Gender;
import java.util.List;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class TargetingParams extends lp.g<TargetingParams> {
    @VisibleForTesting
    static final String DATA_ID_EXTERNAL_USER_ID = "external_user_ids";
    private Integer birthdayYear;
    private BlockedParams blockedParams;
    private String city;
    private String country;
    private Location deviceLocation;
    private List<ExternalUserId> externalUserIdList;
    private String framework;
    private Gender gender;
    private Boolean isPaid;
    private String[] keywords;
    private String storeCategory;
    private String[] storeSubCategories;
    private String storeUrl;
    private String userId;
    private String zip;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fillAppExtension$0(App.Builder builder, String[] strArr) {
        for (String str : strArr) {
            builder.addStoresubcat(str);
        }
    }

    private void prepareBlockParams() {
        if (this.blockedParams == null) {
            this.blockedParams = new BlockedParams();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void build(@NonNull Context.App.Builder builder) {
        String str = this.storeUrl;
        if (str != null) {
            builder.setStoreurl(str);
        }
        Boolean bool = this.isPaid;
        builder.setPaid(bool != null && bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fillAppExtension(@NonNull final App.Builder builder) {
        String str = this.storeCategory;
        Objects.requireNonNull(builder);
        io.bidmachine.core.g.H(str, new Executable() { // from class: io.bidmachine.r5
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                App.Builder.this.setStorecat((String) obj);
            }
        });
        io.bidmachine.core.g.H(this.storeSubCategories, new Executable() { // from class: io.bidmachine.s5
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                TargetingParams.lambda$fillAppExtension$0(App.Builder.this, (String[]) obj);
            }
        });
        io.bidmachine.core.g.H(this.framework, new Executable() { // from class: io.bidmachine.t5
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                App.Builder.this.setFmwname((String) obj);
            }
        });
    }

    @Nullable
    Integer getBirthdayYear() {
        return this.birthdayYear;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public BlockedParams getBlockedParams() {
        return this.blockedParams;
    }

    @Nullable
    String getCity() {
        return this.city;
    }

    @Nullable
    String getCountry() {
        return this.country;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Location getDeviceLocation() {
        return this.deviceLocation;
    }

    @Nullable
    List<ExternalUserId> getExternalUserIdList() {
        return this.externalUserIdList;
    }

    @Nullable
    String getFramework() {
        return this.framework;
    }

    @Nullable
    Gender getGender() {
        return this.gender;
    }

    @Nullable
    String[] getKeywords() {
        return this.keywords;
    }

    @Nullable
    Boolean getPaid() {
        return this.isPaid;
    }

    @Nullable
    String getStoreCategory() {
        return this.storeCategory;
    }

    @Nullable
    String[] getStoreSubCategories() {
        return this.storeSubCategories;
    }

    @Nullable
    String getStoreUrl() {
        return this.storeUrl;
    }

    @Nullable
    String getUserId() {
        return this.userId;
    }

    @Nullable
    String getZip() {
        return this.zip;
    }

    /* renamed from: setExternalUserIds  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m4936setExternalUserIds(List list) {
        return setExternalUserIds((List<ExternalUserId>) list);
    }

    /* renamed from: addBlockedAdvertiserDomain */
    public TargetingParams m4929addBlockedAdvertiserDomain(@NonNull String str) {
        prepareBlockParams();
        this.blockedParams.m4913addBlockedAdvertiserDomain(str);
        return this;
    }

    /* renamed from: addBlockedAdvertiserIABCategory */
    public TargetingParams m4930addBlockedAdvertiserIABCategory(@NonNull String str) {
        prepareBlockParams();
        this.blockedParams.m4914addBlockedAdvertiserIABCategory(str);
        return this;
    }

    /* renamed from: addBlockedApplication */
    public TargetingParams m4931addBlockedApplication(@NonNull String str) {
        prepareBlockParams();
        this.blockedParams.m4915addBlockedApplication(str);
        return this;
    }

    @Override // lp.g
    public void merge(@NonNull TargetingParams targetingParams) {
        this.userId = (String) io.bidmachine.core.g.b0(this.userId, targetingParams.userId);
        this.gender = (Gender) io.bidmachine.core.g.b0(this.gender, targetingParams.gender);
        this.birthdayYear = (Integer) io.bidmachine.core.g.b0(this.birthdayYear, targetingParams.birthdayYear);
        this.keywords = (String[]) io.bidmachine.core.g.b0(this.keywords, targetingParams.keywords);
        this.country = (String) io.bidmachine.core.g.b0(this.country, targetingParams.country);
        this.city = (String) io.bidmachine.core.g.b0(this.city, targetingParams.city);
        this.zip = (String) io.bidmachine.core.g.b0(this.zip, targetingParams.zip);
        this.deviceLocation = (Location) io.bidmachine.core.g.b0(this.deviceLocation, targetingParams.deviceLocation);
        this.storeUrl = (String) io.bidmachine.core.g.b0(this.storeUrl, targetingParams.storeUrl);
        this.storeCategory = (String) io.bidmachine.core.g.b0(this.storeCategory, targetingParams.storeCategory);
        this.storeSubCategories = (String[]) io.bidmachine.core.g.b0(this.storeSubCategories, targetingParams.storeSubCategories);
        this.framework = (String) io.bidmachine.core.g.b0(this.framework, targetingParams.framework);
        this.isPaid = (Boolean) io.bidmachine.core.g.b0(this.isPaid, targetingParams.isPaid);
        this.externalUserIdList = (List) io.bidmachine.core.g.b0(this.externalUserIdList, targetingParams.externalUserIdList);
        if (targetingParams.blockedParams != null) {
            if (this.blockedParams == null) {
                this.blockedParams = new BlockedParams();
            }
            this.blockedParams.merge(targetingParams.blockedParams);
        }
    }

    /* renamed from: setBirthdayYear */
    public TargetingParams m4932setBirthdayYear(Integer num) {
        if (num != null && !io.bidmachine.core.g.Q(num.intValue())) {
            io.bidmachine.core.a.g("Birthday Year should be 4-digit integer, more or equal 1900 and less or equal than current year");
        } else {
            this.birthdayYear = num;
        }
        return this;
    }

    /* renamed from: setCity */
    public TargetingParams m4933setCity(String str) {
        this.city = str;
        return this;
    }

    /* renamed from: setCountry */
    public TargetingParams m4934setCountry(String str) {
        this.country = str;
        return this;
    }

    /* renamed from: setDeviceLocation */
    public TargetingParams m4935setDeviceLocation(Location location) {
        this.deviceLocation = location;
        return this;
    }

    public TargetingParams setExternalUserIds(List<ExternalUserId> list) {
        this.externalUserIdList = list;
        return this;
    }

    /* renamed from: setFramework */
    public TargetingParams m4937setFramework(String str) {
        this.framework = str;
        return this;
    }

    /* renamed from: setGender */
    public TargetingParams m4938setGender(Gender gender) {
        this.gender = gender;
        return this;
    }

    /* renamed from: setKeywords */
    public TargetingParams m4939setKeywords(String... strArr) {
        this.keywords = strArr;
        return this;
    }

    /* renamed from: setPaid */
    public TargetingParams m4940setPaid(Boolean bool) {
        this.isPaid = bool;
        return this;
    }

    /* renamed from: setStoreCategory */
    public TargetingParams m4941setStoreCategory(String str) {
        this.storeCategory = str;
        return this;
    }

    /* renamed from: setStoreSubCategories */
    public TargetingParams m4942setStoreSubCategories(String... strArr) {
        this.storeSubCategories = strArr;
        return this;
    }

    /* renamed from: setStoreUrl */
    public TargetingParams m4943setStoreUrl(String str) {
        this.storeUrl = str;
        return this;
    }

    /* renamed from: setUserId */
    public TargetingParams m4944setUserId(String str) {
        this.userId = str;
        return this;
    }

    /* renamed from: setZip */
    public TargetingParams m4945setZip(String str) {
        this.zip = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void build(@NonNull Context.User.Builder builder) {
        String[] strArr;
        String str = this.userId;
        if (str != null) {
            builder.setId(str);
        }
        Integer num = this.birthdayYear;
        if (num != null) {
            builder.setYob(num.intValue());
        }
        Gender gender = this.gender;
        if (gender != null) {
            builder.setGender(gender.getOrtbValue());
        }
        String[] strArr2 = this.keywords;
        if (strArr2 != null && strArr2.length > 0) {
            StringBuilder sb2 = new StringBuilder();
            for (String str2 : this.keywords) {
                if (sb2.length() > 0) {
                    sb2.append(",");
                }
                sb2.append(str2);
            }
            builder.setKeywords(sb2.toString());
        }
        Context.Geo.Builder newBuilder = Context.Geo.newBuilder();
        build(newBuilder);
        fr.e.d(newBuilder, null, false);
        builder.setGeo(newBuilder);
        List<ExternalUserId> list = this.externalUserIdList;
        if (list == null || list.size() <= 0) {
            return;
        }
        Context.Data.Builder id2 = Context.Data.newBuilder().setId(DATA_ID_EXTERNAL_USER_ID);
        for (ExternalUserId externalUserId : this.externalUserIdList) {
            String sourceId = externalUserId.getSourceId();
            String value = externalUserId.getValue();
            if (!TextUtils.isEmpty(sourceId) && !TextUtils.isEmpty(value)) {
                id2.addSegment(Context.Data.Segment.newBuilder().setId(sourceId).setValue(value));
            }
        }
        builder.addData(id2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void build(@NonNull Context.Geo.Builder builder) {
        String str = this.country;
        if (str != null) {
            builder.setCountry(str);
        }
        String str2 = this.city;
        if (str2 != null) {
            builder.setCity(str2);
        }
        String str3 = this.zip;
        if (str3 != null) {
            builder.setZip(str3);
        }
    }
}
